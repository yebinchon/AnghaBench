
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int threads_shift ;

int cpu_first_thread_of_core(int core)
{
 return core << threads_shift;
}
