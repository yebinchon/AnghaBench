
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int buffer; } ;
struct ht16k33_priv {TYPE_1__ fbdev; } ;
struct fb_info {struct ht16k33_priv* par; } ;


 struct page* virt_to_page (int ) ;
 int vm_map_pages_zero (struct vm_area_struct*,struct page**,int) ;

__attribute__((used)) static int ht16k33_mmap(struct fb_info *info, struct vm_area_struct *vma)
{
 struct ht16k33_priv *priv = info->par;
 struct page *pages = virt_to_page(priv->fbdev.buffer);

 return vm_map_pages_zero(vma, &pages, 1);
}
