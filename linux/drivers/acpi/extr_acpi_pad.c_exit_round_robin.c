
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int cpumask_clear_cpu (int,struct cpumask*) ;
 int pad_busy_cpus_bits ;
 struct cpumask* to_cpumask (int ) ;
 int* tsk_in_cpu ;

__attribute__((used)) static void exit_round_robin(unsigned int tsk_index)
{
 struct cpumask *pad_busy_cpus = to_cpumask(pad_busy_cpus_bits);
 cpumask_clear_cpu(tsk_in_cpu[tsk_index], pad_busy_cpus);
 tsk_in_cpu[tsk_index] = -1;
}
