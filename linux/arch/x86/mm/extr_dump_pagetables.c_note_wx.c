
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_state {unsigned long current_address; unsigned long start_address; unsigned long wx_pages; } ;


 scalar_t__ BIOS_BEGIN ;
 scalar_t__ BIOS_END ;
 scalar_t__ PAGE_OFFSET ;
 unsigned long PAGE_SIZE ;
 int WARN_ONCE (int,char*,void*) ;
 int _PAGE_NX ;
 int __supported_pte_mask ;
 scalar_t__ pcibios_enabled ;
 int pr_warn_once (char*,unsigned long) ;

__attribute__((used)) static void note_wx(struct pg_state *st)
{
 unsigned long npages;

 npages = (st->current_address - st->start_address) / PAGE_SIZE;
 st->wx_pages += npages;
 WARN_ONCE(__supported_pte_mask & _PAGE_NX,
    "x86/mm: Found insecure W+X mapping at address %pS\n",
    (void *)st->start_address);
}
