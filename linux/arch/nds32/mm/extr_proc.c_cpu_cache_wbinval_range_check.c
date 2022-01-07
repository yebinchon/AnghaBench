
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_mm; } ;
struct TYPE_2__ {unsigned long line_size; } ;


 size_t DCACHE ;
 TYPE_1__* L1_cache_info ;
 unsigned long PAGE_MASK ;
 int PAGE_SIZE ;
 int cpu_dcache_wbinval_all () ;
 int cpu_dcache_wbinval_page (unsigned long) ;
 int cpu_dcache_wbinval_range (unsigned long,unsigned long) ;
 int cpu_icache_inval_all () ;
 int cpu_icache_inval_page (unsigned long) ;
 int cpu_icache_inval_range (unsigned long,unsigned long) ;
 scalar_t__ va_present (int ,unsigned long) ;

void cpu_cache_wbinval_range_check(struct vm_area_struct *vma,
       unsigned long start, unsigned long end,
       bool flushi, bool wbd)
{
 unsigned long line_size, t_start, t_end;

 if (!flushi && !wbd)
  return;
 line_size = L1_cache_info[DCACHE].line_size;
 start = start & ~(line_size - 1);
 end = (end + line_size - 1) & ~(line_size - 1);

 if ((end - start) > (8 * PAGE_SIZE)) {
  if (wbd)
   cpu_dcache_wbinval_all();
  if (flushi)
   cpu_icache_inval_all();
  return;
 }

 t_start = (start + PAGE_SIZE) & PAGE_MASK;
 t_end = ((end - 1) & PAGE_MASK);

 if ((start & PAGE_MASK) == t_end) {
  if (va_present(vma->vm_mm, start)) {
   if (wbd)
    cpu_dcache_wbinval_range(start, end);
   if (flushi)
    cpu_icache_inval_range(start, end);
  }
  return;
 }

 if (va_present(vma->vm_mm, start)) {
  if (wbd)
   cpu_dcache_wbinval_range(start, t_start);
  if (flushi)
   cpu_icache_inval_range(start, t_start);
 }

 if (va_present(vma->vm_mm, end - 1)) {
  if (wbd)
   cpu_dcache_wbinval_range(t_end, end);
  if (flushi)
   cpu_icache_inval_range(t_end, end);
 }

 while (t_start < t_end) {
  if (va_present(vma->vm_mm, t_start)) {
   if (wbd)
    cpu_dcache_wbinval_page(t_start);
   if (flushi)
    cpu_icache_inval_page(t_start);
  }
  t_start += PAGE_SIZE;
 }
}
