
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_do_idle () ;
 int flush_cache_all () ;

__attribute__((used)) static int imx6sx_idle_finish(unsigned long val)
{
 flush_cache_all();
 cpu_do_idle();

 return 0;
}
