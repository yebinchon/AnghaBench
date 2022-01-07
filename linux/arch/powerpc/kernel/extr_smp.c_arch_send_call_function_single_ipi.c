
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PPC_MSG_CALL_FUNCTION ;
 int do_message_pass (int,int ) ;

void arch_send_call_function_single_ipi(int cpu)
{
 do_message_pass(cpu, PPC_MSG_CALL_FUNCTION);
}
