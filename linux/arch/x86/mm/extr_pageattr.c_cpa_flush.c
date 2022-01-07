
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpa_data {unsigned int numpages; } ;
typedef int pte_t ;


 int BUG_ON (int) ;
 int PAGE_SIZE ;
 int X86_FEATURE_CLFLUSH ;
 int _PAGE_PRESENT ;
 unsigned long __cpa_addr (struct cpa_data*,unsigned int) ;
 int __cpa_flush_tlb ;
 int clflush_cache_range_opt (void*,int ) ;
 int cpa_flush_all (int) ;
 int early_boot_irqs_disabled ;
 scalar_t__ fix_addr (unsigned long) ;
 int flush_tlb_all () ;
 scalar_t__ irqs_disabled () ;
 int * lookup_address (unsigned long,unsigned int*) ;
 int mb () ;
 int on_each_cpu (int ,struct cpa_data*,int) ;
 int pte_val (int ) ;
 int static_cpu_has (int ) ;
 unsigned int tlb_single_page_flush_ceiling ;

__attribute__((used)) static void cpa_flush(struct cpa_data *data, int cache)
{
 struct cpa_data *cpa = data;
 unsigned int i;

 BUG_ON(irqs_disabled() && !early_boot_irqs_disabled);

 if (cache && !static_cpu_has(X86_FEATURE_CLFLUSH)) {
  cpa_flush_all(cache);
  return;
 }

 if (cpa->numpages <= tlb_single_page_flush_ceiling)
  on_each_cpu(__cpa_flush_tlb, cpa, 1);
 else
  flush_tlb_all();

 if (!cache)
  return;

 mb();
 for (i = 0; i < cpa->numpages; i++) {
  unsigned long addr = __cpa_addr(cpa, i);
  unsigned int level;

  pte_t *pte = lookup_address(addr, &level);




  if (pte && (pte_val(*pte) & _PAGE_PRESENT))
   clflush_cache_range_opt((void *)fix_addr(addr), PAGE_SIZE);
 }
 mb();
}
