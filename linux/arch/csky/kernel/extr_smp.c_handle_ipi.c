
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int bits; } ;


 int BUG_ON (int) ;
 int IPI_CALL_FUNC ;
 unsigned long IPI_MAX ;
 int IPI_RESCHEDULE ;
 int IRQ_HANDLED ;
 int generic_smp_call_function_interrupt () ;
 int ipi_data ;
 int scheduler_ipi () ;
 TYPE_1__* this_cpu_ptr (int *) ;
 unsigned long xchg (int *,int ) ;

__attribute__((used)) static irqreturn_t handle_ipi(int irq, void *dev)
{
 while (1) {
  unsigned long ops;

  ops = xchg(&this_cpu_ptr(&ipi_data)->bits, 0);
  if (ops == 0)
   return IRQ_HANDLED;

  if (ops & (1 << IPI_RESCHEDULE))
   scheduler_ipi();

  if (ops & (1 << IPI_CALL_FUNC))
   generic_smp_call_function_interrupt();

  BUG_ON((ops >> IPI_MAX) != 0);
 }

 return IRQ_HANDLED;
}
