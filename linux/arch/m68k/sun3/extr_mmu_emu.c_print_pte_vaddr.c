
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __pte (int ) ;
 int pr_cont (char*,unsigned long,int ) ;
 int print_pte (int ) ;
 int sun3_get_pte (unsigned long) ;
 int sun3_get_segmap (unsigned long) ;

void print_pte_vaddr (unsigned long vaddr)
{
 pr_cont(" vaddr=%lx [%02lx]", vaddr, sun3_get_segmap (vaddr));
 print_pte (__pte (sun3_get_pte (vaddr)));
}
