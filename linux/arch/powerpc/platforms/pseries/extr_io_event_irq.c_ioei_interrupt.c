
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_error_log {int dummy; } ;
struct pseries_io_event {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RTAS_DATA_BUF_SIZE ;
 int RTAS_IO_EVENTS ;
 int RTAS_VECTOR_EXTERNAL_INTERRUPT ;
 int __pa (scalar_t__) ;
 int atomic_notifier_call_chain (int *,int ,struct pseries_io_event*) ;
 int ioei_check_exception_token ;
 struct pseries_io_event* ioei_find_event (struct rtas_error_log*) ;
 scalar_t__ ioei_rtas_buf ;
 int pseries_ioei_notifier_list ;
 int rtas_call (int ,int,int,int *,int ,int ,int ,int,int ,int ) ;
 int virq_to_hw (int) ;

__attribute__((used)) static irqreturn_t ioei_interrupt(int irq, void *dev_id)
{
 struct pseries_io_event *event;
 int rtas_rc;

 for (;;) {
  rtas_rc = rtas_call(ioei_check_exception_token, 6, 1, ((void*)0),
        RTAS_VECTOR_EXTERNAL_INTERRUPT,
        virq_to_hw(irq),
        RTAS_IO_EVENTS, 1 ,
        __pa(ioei_rtas_buf),
        RTAS_DATA_BUF_SIZE);
  if (rtas_rc != 0)
   break;

  event = ioei_find_event((struct rtas_error_log *)ioei_rtas_buf);
  if (!event)
   continue;

  atomic_notifier_call_chain(&pseries_ioei_notifier_list,
        0, event);
 }
 return IRQ_HANDLED;
}
