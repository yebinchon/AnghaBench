
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmb_entry {int vpn; int ppn; int flags; int entry; } ;


 int PMB_V ;
 int __raw_writel (int,unsigned long) ;
 int back_to_cached () ;
 int jump_to_uncached () ;
 unsigned long mk_pmb_addr (int ) ;
 unsigned long mk_pmb_data (int ) ;

__attribute__((used)) static void __set_pmb_entry(struct pmb_entry *pmbe)
{
 unsigned long addr, data;

 addr = mk_pmb_addr(pmbe->entry);
 data = mk_pmb_data(pmbe->entry);

 jump_to_uncached();


 __raw_writel(pmbe->vpn | PMB_V, addr);
 __raw_writel(pmbe->ppn | pmbe->flags | PMB_V, data);

 back_to_cached();
}
