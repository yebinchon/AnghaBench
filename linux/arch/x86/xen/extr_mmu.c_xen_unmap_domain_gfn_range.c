
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 int EINVAL ;
 int XENFEAT_auto_translated_physmap ;
 scalar_t__ xen_feature (int ) ;
 int xen_xlate_unmap_gfn_range (struct vm_area_struct*,int,struct page**) ;

int xen_unmap_domain_gfn_range(struct vm_area_struct *vma,
          int nr, struct page **pages)
{
 if (xen_feature(XENFEAT_auto_translated_physmap))
  return xen_xlate_unmap_gfn_range(vma, nr, pages);

 if (!pages)
  return 0;

 return -EINVAL;
}
