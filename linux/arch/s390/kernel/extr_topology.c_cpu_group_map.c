
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mask_info {struct mask_info* next; int mask; } ;
typedef int cpumask_t ;





 int cpu_present_mask ;
 int cpumask_copy (int *,int ) ;
 int cpumask_empty (int *) ;
 int cpumask_of (unsigned int) ;
 int cpumask_test_cpu (unsigned int,int *) ;
 int topology_mode ;

__attribute__((used)) static cpumask_t cpu_group_map(struct mask_info *info, unsigned int cpu)
{
 cpumask_t mask;

 cpumask_copy(&mask, cpumask_of(cpu));
 switch (topology_mode) {
 case 130:
  while (info) {
   if (cpumask_test_cpu(cpu, &info->mask)) {
    mask = info->mask;
    break;
   }
   info = info->next;
  }
  if (cpumask_empty(&mask))
   cpumask_copy(&mask, cpumask_of(cpu));
  break;
 case 129:
  cpumask_copy(&mask, cpu_present_mask);
  break;
 default:

 case 128:
  cpumask_copy(&mask, cpumask_of(cpu));
  break;
 }
 return mask;
}
