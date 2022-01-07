
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; int vm_mm; } ;
struct flusher_data {unsigned long addr1; unsigned long addr2; struct vm_area_struct* vma; } ;
struct TYPE_3__ {scalar_t__ n_aliases; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;


 scalar_t__ NO_CONTEXT ;
 int VM_EXEC ;
 TYPE_2__ boot_cpu_data ;
 scalar_t__ cpu_context (int ,int ) ;
 int flush_dcache_all () ;
 int flush_icache_all () ;
 int smp_processor_id () ;

__attribute__((used)) static void sh4_flush_cache_range(void *args)
{
 struct flusher_data *data = args;
 struct vm_area_struct *vma;
 unsigned long start, end;

 vma = data->vma;
 start = data->addr1;
 end = data->addr2;

 if (cpu_context(smp_processor_id(), vma->vm_mm) == NO_CONTEXT)
  return;





 if (boot_cpu_data.dcache.n_aliases == 0)
  return;

 flush_dcache_all();

 if (vma->vm_flags & VM_EXEC)
  flush_icache_all();
}
