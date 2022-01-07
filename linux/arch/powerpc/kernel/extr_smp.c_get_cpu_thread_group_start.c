
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_groups {int nr_groups; int threads_per_group; int* thread_list; } ;


 int get_hard_smp_processor_id (int) ;

__attribute__((used)) static int get_cpu_thread_group_start(int cpu, struct thread_groups *tg)
{
 int hw_cpu_id = get_hard_smp_processor_id(cpu);
 int i, j;

 for (i = 0; i < tg->nr_groups; i++) {
  int group_start = i * tg->threads_per_group;

  for (j = 0; j < tg->threads_per_group; j++) {
   int idx = group_start + j;

   if (tg->thread_list[idx] == hw_cpu_id)
    return group_start;
  }
 }

 return -1;
}
