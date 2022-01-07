
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipi_handler ;
 int on_each_cpu (int ,int *,int) ;

void global_cache_flush(void)
{
 on_each_cpu(ipi_handler, ((void*)0), 1);
}
