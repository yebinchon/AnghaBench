
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {int sz; int addr; int cpu_count; int data; } ;


 int __invalidate_icache_range (int ,int ) ;
 int atomic_inc (int *) ;
 int atomic_inc_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 int cpu_relax () ;
 int local_patch_text (int ,int ,int ) ;
 scalar_t__ num_online_cpus () ;

__attribute__((used)) static int patch_text_stop_machine(void *data)
{
 struct patch *patch = data;

 if (atomic_inc_return(&patch->cpu_count) == 1) {
  local_patch_text(patch->addr, patch->data, patch->sz);
  atomic_inc(&patch->cpu_count);
 } else {
  while (atomic_read(&patch->cpu_count) <= num_online_cpus())
   cpu_relax();
  __invalidate_icache_range(patch->addr, patch->sz);
 }
 return 0;
}
