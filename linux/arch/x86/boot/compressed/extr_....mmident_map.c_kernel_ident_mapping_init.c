
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_mapping_info {unsigned long offset; int kernpg_flag; int context; scalar_t__ (* alloc_pgt_page ) (int ) ;} ;
typedef int pud_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 int ENOMEM ;
 unsigned long PGDIR_MASK ;
 unsigned long PGDIR_SIZE ;
 int _KERNPG_TABLE ;
 int __default_kernel_pte_mask ;
 int __pa (int *) ;
 int __pgd (int) ;
 int ident_p4d_init (struct x86_mapping_info*,int *,unsigned long,unsigned long) ;
 int * p4d_offset (int *,int ) ;
 int pgd_index (unsigned long) ;
 scalar_t__ pgd_present (int ) ;
 scalar_t__ pgtable_l5_enabled () ;
 int * pud_offset (int *,int ) ;
 int set_pgd (int *,int ) ;
 scalar_t__ stub1 (int ) ;

int kernel_ident_mapping_init(struct x86_mapping_info *info, pgd_t *pgd_page,
         unsigned long pstart, unsigned long pend)
{
 unsigned long addr = pstart + info->offset;
 unsigned long end = pend + info->offset;
 unsigned long next;
 int result;


 if (!info->kernpg_flag)
  info->kernpg_flag = _KERNPG_TABLE;


 info->kernpg_flag &= __default_kernel_pte_mask;

 for (; addr < end; addr = next) {
  pgd_t *pgd = pgd_page + pgd_index(addr);
  p4d_t *p4d;

  next = (addr & PGDIR_MASK) + PGDIR_SIZE;
  if (next > end)
   next = end;

  if (pgd_present(*pgd)) {
   p4d = p4d_offset(pgd, 0);
   result = ident_p4d_init(info, p4d, addr, next);
   if (result)
    return result;
   continue;
  }

  p4d = (p4d_t *)info->alloc_pgt_page(info->context);
  if (!p4d)
   return -ENOMEM;
  result = ident_p4d_init(info, p4d, addr, next);
  if (result)
   return result;
  if (pgtable_l5_enabled()) {
   set_pgd(pgd, __pgd(__pa(p4d) | info->kernpg_flag));
  } else {




   pud_t *pud = pud_offset(p4d, 0);
   set_pgd(pgd, __pgd(__pa(pud) | info->kernpg_flag));
  }
 }

 return 0;
}
