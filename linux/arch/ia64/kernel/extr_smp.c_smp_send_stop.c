
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPI_CPU_STOP ;
 int send_IPI_allbutself (int ) ;

void
smp_send_stop (void)
{
 send_IPI_allbutself(IPI_CPU_STOP);
}
