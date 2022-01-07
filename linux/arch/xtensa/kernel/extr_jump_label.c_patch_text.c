
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {unsigned long addr; size_t sz; void const* data; int cpu_count; } ;


 int ATOMIC_INIT (int ) ;
 int CONFIG_SMP ;
 scalar_t__ IS_ENABLED (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int local_patch_text (unsigned long,void const*,size_t) ;
 int patch_text_stop_machine ;
 int stop_machine_cpuslocked (int ,struct patch*,int *) ;

__attribute__((used)) static void patch_text(unsigned long addr, const void *data, size_t sz)
{
 if (IS_ENABLED(CONFIG_SMP)) {
  struct patch patch = {
   .cpu_count = ATOMIC_INIT(0),
   .addr = addr,
   .sz = sz,
   .data = data,
  };
  stop_machine_cpuslocked(patch_text_stop_machine,
     &patch, ((void*)0));
 } else {
  unsigned long flags;

  local_irq_save(flags);
  local_patch_text(addr, data, sz);
  local_irq_restore(flags);
 }
}
