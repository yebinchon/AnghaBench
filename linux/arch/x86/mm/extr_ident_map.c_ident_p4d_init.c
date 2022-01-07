
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_mapping_info {int kernpg_flag; int context; scalar_t__ (* alloc_pgt_page ) (int ) ;} ;
typedef int pud_t ;
typedef int p4d_t ;


 int ENOMEM ;
 unsigned long P4D_MASK ;
 unsigned long P4D_SIZE ;
 int __p4d (int) ;
 int __pa (int *) ;
 int ident_pud_init (struct x86_mapping_info*,int *,unsigned long,unsigned long) ;
 int p4d_index (unsigned long) ;
 scalar_t__ p4d_present (int ) ;
 int * pud_offset (int *,int ) ;
 int set_p4d (int *,int ) ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static int ident_p4d_init(struct x86_mapping_info *info, p4d_t *p4d_page,
     unsigned long addr, unsigned long end)
{
 unsigned long next;

 for (; addr < end; addr = next) {
  p4d_t *p4d = p4d_page + p4d_index(addr);
  pud_t *pud;

  next = (addr & P4D_MASK) + P4D_SIZE;
  if (next > end)
   next = end;

  if (p4d_present(*p4d)) {
   pud = pud_offset(p4d, 0);
   ident_pud_init(info, pud, addr, next);
   continue;
  }
  pud = (pud_t *)info->alloc_pgt_page(info->context);
  if (!pud)
   return -ENOMEM;
  ident_pud_init(info, pud, addr, next);
  set_p4d(p4d, __p4d(__pa(pud) | info->kernpg_flag));
 }

 return 0;
}
