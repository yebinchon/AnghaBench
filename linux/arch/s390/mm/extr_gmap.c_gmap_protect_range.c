
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmap {int dummy; } ;
typedef int pmd_t ;


 int BUG_ON (int ) ;
 int EAGAIN ;
 int EINVAL ;
 unsigned long HPAGE_MASK ;
 unsigned long HPAGE_SIZE ;
 scalar_t__ IS_ERR_VALUE (unsigned long) ;
 scalar_t__ PAGE_SIZE ;
 unsigned long __gmap_translate (struct gmap*,unsigned long) ;
 int gmap_is_shadow (struct gmap*) ;
 int gmap_pmd_op_end (struct gmap*,int *) ;
 int * gmap_pmd_op_walk (struct gmap*,unsigned long) ;
 int gmap_protect_pmd (struct gmap*,unsigned long,int *,int,unsigned long) ;
 int gmap_protect_pte (struct gmap*,unsigned long,int *,int,unsigned long) ;
 int gmap_pte_op_fixup (struct gmap*,unsigned long,unsigned long,int) ;
 int pmd_large (int ) ;

__attribute__((used)) static int gmap_protect_range(struct gmap *gmap, unsigned long gaddr,
         unsigned long len, int prot, unsigned long bits)
{
 unsigned long vmaddr, dist;
 pmd_t *pmdp;
 int rc;

 BUG_ON(gmap_is_shadow(gmap));
 while (len) {
  rc = -EAGAIN;
  pmdp = gmap_pmd_op_walk(gmap, gaddr);
  if (pmdp) {
   if (!pmd_large(*pmdp)) {
    rc = gmap_protect_pte(gmap, gaddr, pmdp, prot,
            bits);
    if (!rc) {
     len -= PAGE_SIZE;
     gaddr += PAGE_SIZE;
    }
   } else {
    rc = gmap_protect_pmd(gmap, gaddr, pmdp, prot,
            bits);
    if (!rc) {
     dist = HPAGE_SIZE - (gaddr & ~HPAGE_MASK);
     len = len < dist ? 0 : len - dist;
     gaddr = (gaddr & HPAGE_MASK) + HPAGE_SIZE;
    }
   }
   gmap_pmd_op_end(gmap, pmdp);
  }
  if (rc) {
   if (rc == -EINVAL)
    return rc;


   vmaddr = __gmap_translate(gmap, gaddr);
   if (IS_ERR_VALUE(vmaddr))
    return vmaddr;
   rc = gmap_pte_op_fixup(gmap, gaddr, vmaddr, prot);
   if (rc)
    return rc;
  }
 }
 return 0;
}
