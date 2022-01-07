
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int cpumask_of (int) ;
 int set_cpumask_stuck (int ,int ) ;

__attribute__((used)) static void set_cpu_stuck(int cpu, u64 tb)
{
 set_cpumask_stuck(cpumask_of(cpu), tb);
}
