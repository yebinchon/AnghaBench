
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * cpu_use ;

__attribute__((used)) static void drop_cpu(int cpu)
{
 cpu_use[cpu]--;
}
