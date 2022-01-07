
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmap {int guest_to_host; } ;


 unsigned long PMD_SHIFT ;
 int __gmap_unlink_by_vmaddr (struct gmap*,unsigned long) ;
 scalar_t__ radix_tree_delete (int *,unsigned long) ;

__attribute__((used)) static int __gmap_unmap_by_gaddr(struct gmap *gmap, unsigned long gaddr)
{
 unsigned long vmaddr;

 vmaddr = (unsigned long) radix_tree_delete(&gmap->guest_to_host,
         gaddr >> PMD_SHIFT);
 return vmaddr ? __gmap_unlink_by_vmaddr(gmap, vmaddr) : 0;
}
