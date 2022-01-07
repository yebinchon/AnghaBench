
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPI_RESCHEDULE ;
 int ipi_send_msg_one (int,int ) ;

void smp_send_reschedule(int cpu)
{
 ipi_send_msg_one(cpu, IPI_RESCHEDULE);
}
