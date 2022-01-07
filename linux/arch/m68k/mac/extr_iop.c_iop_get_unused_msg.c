
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iop_msg {scalar_t__ status; } ;


 scalar_t__ IOP_MSGSTATUS_UNUSED ;
 scalar_t__ IOP_MSGSTATUS_WAITING ;
 int NUM_IOP_MSGS ;
 struct iop_msg* iop_msg_pool ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static struct iop_msg *iop_get_unused_msg(void)
{
 int i;
 unsigned long flags;

 local_irq_save(flags);

 for (i = 0 ; i < NUM_IOP_MSGS ; i++) {
  if (iop_msg_pool[i].status == IOP_MSGSTATUS_UNUSED) {
   iop_msg_pool[i].status = IOP_MSGSTATUS_WAITING;
   local_irq_restore(flags);
   return &iop_msg_pool[i];
  }
 }

 local_irq_restore(flags);
 return ((void*)0);
}
