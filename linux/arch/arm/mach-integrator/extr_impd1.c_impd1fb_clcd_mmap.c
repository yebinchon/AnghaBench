
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_pgoff; unsigned long vm_end; unsigned long vm_start; int vm_page_prot; } ;
struct TYPE_3__ {unsigned long smem_start; } ;
struct TYPE_4__ {TYPE_1__ fix; } ;
struct clcd_fb {TYPE_2__ fb; } ;


 unsigned long PAGE_SHIFT ;
 int remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;

__attribute__((used)) static int impd1fb_clcd_mmap(struct clcd_fb *fb, struct vm_area_struct *vma)
{
 unsigned long start, size;

 start = vma->vm_pgoff + (fb->fb.fix.smem_start >> PAGE_SHIFT);
 size = vma->vm_end - vma->vm_start;

 return remap_pfn_range(vma, vma->vm_start, start, size,
          vma->vm_page_prot);
}
