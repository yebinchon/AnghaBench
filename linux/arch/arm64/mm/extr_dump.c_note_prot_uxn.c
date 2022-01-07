
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_state {int current_prot; unsigned long start_address; unsigned long uxn_pages; int check_wx; } ;


 unsigned long PAGE_SIZE ;
 int PTE_UXN ;
 int WARN_ONCE (int,char*,void*,void*) ;

__attribute__((used)) static void note_prot_uxn(struct pg_state *st, unsigned long addr)
{
 if (!st->check_wx)
  return;

 if ((st->current_prot & PTE_UXN) == PTE_UXN)
  return;

 WARN_ONCE(1, "arm64/mm: Found non-UXN mapping at address %p/%pS\n",
    (void *)st->start_address, (void *)st->start_address);

 st->uxn_pages += (addr - st->start_address) / PAGE_SIZE;
}
