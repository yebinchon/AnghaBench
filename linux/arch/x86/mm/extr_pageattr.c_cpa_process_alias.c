
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpa_data {int pfn; unsigned long* vaddr; int flags; scalar_t__ curpage; } ;


 int CPA_ARRAY ;
 int CPA_PAGES_ARRAY ;
 unsigned long PAGE_OFFSET ;
 int PAGE_SHIFT ;
 unsigned long __START_KERNEL_map ;
 int __change_page_attr_set_clr (struct cpa_data*,int ) ;
 unsigned long __cpa_addr (struct cpa_data*,scalar_t__) ;
 scalar_t__ __cpa_pfn_in_highmap (int) ;
 scalar_t__ __va (int) ;
 unsigned long _brk_end ;
 scalar_t__ _text ;
 int max_pfn_mapped ;
 int pfn_range_is_mapped (int,int) ;
 unsigned long phys_base ;
 int within (unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static int cpa_process_alias(struct cpa_data *cpa)
{
 struct cpa_data alias_cpa;
 unsigned long laddr = (unsigned long)__va(cpa->pfn << PAGE_SHIFT);
 unsigned long vaddr;
 int ret;

 if (!pfn_range_is_mapped(cpa->pfn, cpa->pfn + 1))
  return 0;





 vaddr = __cpa_addr(cpa, cpa->curpage);
 if (!(within(vaddr, PAGE_OFFSET,
      PAGE_OFFSET + (max_pfn_mapped << PAGE_SHIFT)))) {

  alias_cpa = *cpa;
  alias_cpa.vaddr = &laddr;
  alias_cpa.flags &= ~(CPA_PAGES_ARRAY | CPA_ARRAY);
  alias_cpa.curpage = 0;

  ret = __change_page_attr_set_clr(&alias_cpa, 0);
  if (ret)
   return ret;
 }
 return 0;
}
