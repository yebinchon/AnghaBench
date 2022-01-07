
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLOBAL_INTERRUPT_QUEUE ;
 int WARN (int,char*,int ,int,unsigned int,int) ;
 int rtas_indicator_present (int ,int *) ;
 int rtas_set_indicator_fast (int ,int,unsigned int) ;
 unsigned long xics_interrupt_server_size ;

void xics_set_cpu_giq(unsigned int gserver, unsigned int join)
{
}
