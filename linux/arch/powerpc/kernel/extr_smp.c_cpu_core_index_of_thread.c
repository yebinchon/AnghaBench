
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int threads_shift ;

int cpu_core_index_of_thread(int cpu)
{
 return cpu >> threads_shift;
}
