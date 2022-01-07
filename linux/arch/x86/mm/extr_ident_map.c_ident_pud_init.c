
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_mapping_info {unsigned long offset; unsigned long page_flag; unsigned long kernpg_flag; int context; scalar_t__ (* alloc_pgt_page ) (int ) ;scalar_t__ direct_gbpages; } ;
typedef int pud_t ;
typedef int pmd_t ;


 int ENOMEM ;
 unsigned long PUD_MASK ;
 unsigned long PUD_SIZE ;
 unsigned long __pa (int *) ;
 int __pud (unsigned long) ;
 int ident_pmd_init (struct x86_mapping_info*,int *,unsigned long,unsigned long) ;
 int * pmd_offset (int *,int ) ;
 int pud_index (unsigned long) ;
 scalar_t__ pud_present (int ) ;
 int set_pud (int *,int ) ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static int ident_pud_init(struct x86_mapping_info *info, pud_t *pud_page,
     unsigned long addr, unsigned long end)
{
 unsigned long next;

 for (; addr < end; addr = next) {
  pud_t *pud = pud_page + pud_index(addr);
  pmd_t *pmd;

  next = (addr & PUD_MASK) + PUD_SIZE;
  if (next > end)
   next = end;

  if (info->direct_gbpages) {
   pud_t pudval;

   if (pud_present(*pud))
    continue;

   addr &= PUD_MASK;
   pudval = __pud((addr - info->offset) | info->page_flag);
   set_pud(pud, pudval);
   continue;
  }

  if (pud_present(*pud)) {
   pmd = pmd_offset(pud, 0);
   ident_pmd_init(info, pmd, addr, next);
   continue;
  }
  pmd = (pmd_t *)info->alloc_pgt_page(info->context);
  if (!pmd)
   return -ENOMEM;
  ident_pmd_init(info, pmd, addr, next);
  set_pud(pud, __pud(__pa(pmd) | info->kernpg_flag));
 }

 return 0;
}
