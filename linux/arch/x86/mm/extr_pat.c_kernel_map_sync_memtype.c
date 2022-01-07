
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
typedef enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;
struct TYPE_2__ {int pid; int comm; } ;


 int EINVAL ;
 unsigned long PAGE_SHIFT ;
 unsigned long __pa (scalar_t__) ;
 scalar_t__ __va (unsigned long) ;
 int cattr_name (int) ;
 TYPE_1__* current ;
 scalar_t__ high_memory ;
 scalar_t__ ioremap_change_attr (unsigned long,unsigned long,int) ;
 int page_is_ram (unsigned long) ;
 int pr_info (char*,int ,int ,int ,unsigned long,unsigned long long) ;

int kernel_map_sync_memtype(u64 base, unsigned long size,
       enum page_cache_mode pcm)
{
 unsigned long id_sz;

 if (base > __pa(high_memory-1))
  return 0;





 if (!page_is_ram(base >> PAGE_SHIFT))
  return 0;

 id_sz = (__pa(high_memory-1) <= base + size) ?
    __pa(high_memory) - base :
    size;

 if (ioremap_change_attr((unsigned long)__va(base), id_sz, pcm) < 0) {
  pr_info("x86/PAT: %s:%d ioremap_change_attr failed %s for [mem %#010Lx-%#010Lx]\n",
   current->comm, current->pid,
   cattr_name(pcm),
   base, (unsigned long long)(base + size-1));
  return -EINVAL;
 }
 return 0;
}
