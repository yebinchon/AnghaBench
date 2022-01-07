
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ PAGE_SIZE ;
 int _copy_pte (int *,int *,unsigned long) ;
 scalar_t__ get_safe_page (int ) ;
 int init_mm ;
 int pmd_populate_kernel (int *,int *,int *) ;
 int * pte_offset_kernel (int *,unsigned long) ;

__attribute__((used)) static int copy_pte(pmd_t *dst_pmdp, pmd_t *src_pmdp, unsigned long start,
      unsigned long end)
{
 pte_t *src_ptep;
 pte_t *dst_ptep;
 unsigned long addr = start;

 dst_ptep = (pte_t *)get_safe_page(GFP_ATOMIC);
 if (!dst_ptep)
  return -ENOMEM;
 pmd_populate_kernel(&init_mm, dst_pmdp, dst_ptep);
 dst_ptep = pte_offset_kernel(dst_pmdp, start);

 src_ptep = pte_offset_kernel(src_pmdp, start);
 do {
  _copy_pte(dst_ptep, src_ptep, addr);
 } while (dst_ptep++, src_ptep++, addr += PAGE_SIZE, addr != end);

 return 0;
}
