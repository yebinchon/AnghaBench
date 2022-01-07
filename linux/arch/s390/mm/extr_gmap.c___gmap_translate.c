
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmap {int guest_to_host; } ;


 unsigned long EFAULT ;
 unsigned long PMD_MASK ;
 unsigned long PMD_SHIFT ;
 scalar_t__ radix_tree_lookup (int *,unsigned long) ;

unsigned long __gmap_translate(struct gmap *gmap, unsigned long gaddr)
{
 unsigned long vmaddr;

 vmaddr = (unsigned long)
  radix_tree_lookup(&gmap->guest_to_host, gaddr >> PMD_SHIFT);

 return vmaddr ? (vmaddr | (gaddr & ~PMD_MASK)) : -EFAULT;
}
