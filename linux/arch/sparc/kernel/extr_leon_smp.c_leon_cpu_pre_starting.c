
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int leon_configure_cache_smp () ;

void leon_cpu_pre_starting(void *arg)
{
 leon_configure_cache_smp();
}
