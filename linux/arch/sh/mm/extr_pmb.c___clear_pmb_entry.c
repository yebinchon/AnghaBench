
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmb_entry {int entry; } ;


 unsigned long PMB_V ;
 unsigned long __raw_readl (unsigned long) ;
 unsigned long mk_pmb_addr (int ) ;
 unsigned long mk_pmb_data (int ) ;
 int writel_uncached (unsigned long,unsigned long) ;

__attribute__((used)) static void __clear_pmb_entry(struct pmb_entry *pmbe)
{
 unsigned long addr, data;
 unsigned long addr_val, data_val;

 addr = mk_pmb_addr(pmbe->entry);
 data = mk_pmb_data(pmbe->entry);

 addr_val = __raw_readl(addr);
 data_val = __raw_readl(data);


 writel_uncached(addr_val & ~PMB_V, addr);
 writel_uncached(data_val & ~PMB_V, data);
}
