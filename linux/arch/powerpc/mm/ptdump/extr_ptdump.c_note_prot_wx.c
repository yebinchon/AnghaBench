
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_state {int current_flags; unsigned long start_address; unsigned long wx_pages; int check_wx; } ;


 int CONFIG_PPC_DEBUG_WX ;
 int IS_ENABLED (int ) ;
 int PAGE_KERNEL_X ;
 unsigned long PAGE_SIZE ;
 int WARN_ONCE (int,char*,void*,void*) ;
 int pgprot_val (int ) ;

__attribute__((used)) static void note_prot_wx(struct pg_state *st, unsigned long addr)
{
 if (!IS_ENABLED(CONFIG_PPC_DEBUG_WX) || !st->check_wx)
  return;

 if (!((st->current_flags & pgprot_val(PAGE_KERNEL_X)) == pgprot_val(PAGE_KERNEL_X)))
  return;

 WARN_ONCE(1, "powerpc/mm: Found insecure W+X mapping at address %p/%pS\n",
    (void *)st->start_address, (void *)st->start_address);

 st->wx_pages += (addr - st->start_address) / PAGE_SIZE;
}
