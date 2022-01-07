
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct fb_info {int dummy; } ;


 int cfag12864b_buffer ;
 struct page* virt_to_page (int ) ;
 int vm_map_pages_zero (struct vm_area_struct*,struct page**,int) ;

__attribute__((used)) static int cfag12864bfb_mmap(struct fb_info *info, struct vm_area_struct *vma)
{
 struct page *pages = virt_to_page(cfag12864b_buffer);

 return vm_map_pages_zero(vma, &pages, 1);
}
