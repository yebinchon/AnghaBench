
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPI_RESCHEDULE ;
 int send_ipi_single (int,int ) ;

void smp_send_reschedule(int cpu)
{
 send_ipi_single(cpu, IPI_RESCHEDULE);
}
