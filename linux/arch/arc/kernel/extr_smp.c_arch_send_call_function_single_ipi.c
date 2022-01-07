
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPI_CALL_FUNC ;
 int ipi_send_msg_one (int,int ) ;

void arch_send_call_function_single_ipi(int cpu)
{
 ipi_send_msg_one(cpu, IPI_CALL_FUNC);
}
