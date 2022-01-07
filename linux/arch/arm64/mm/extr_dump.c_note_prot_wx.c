
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_state {int current_prot; unsigned long start_address; unsigned long wx_pages; int check_wx; } ;


 unsigned long PAGE_SIZE ;
 int PTE_PXN ;
 int PTE_RDONLY ;
 int WARN_ONCE (int,char*,void*,void*) ;

__attribute__((used)) static void note_prot_wx(struct pg_state *st, unsigned long addr)
{
 if (!st->check_wx)
  return;
 if ((st->current_prot & PTE_RDONLY) == PTE_RDONLY)
  return;
 if ((st->current_prot & PTE_PXN) == PTE_PXN)
  return;

 WARN_ONCE(1, "arm64/mm: Found insecure W+X mapping at address %p/%pS\n",
    (void *)st->start_address, (void *)st->start_address);

 st->wx_pages += (addr - st->start_address) / PAGE_SIZE;
}
