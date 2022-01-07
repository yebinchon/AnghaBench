
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PPC_MSG_RESCHEDULE ;
 int do_message_pass (int,int ) ;
 scalar_t__ likely (int ) ;
 int smp_ops ;

void smp_send_reschedule(int cpu)
{
 if (likely(smp_ops))
  do_message_pass(cpu, PPC_MSG_RESCHEDULE);
}
