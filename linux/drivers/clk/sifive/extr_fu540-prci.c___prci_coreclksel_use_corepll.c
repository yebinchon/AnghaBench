
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct __prci_data {int dummy; } ;


 int PRCI_CORECLKSEL_CORECLKSEL_MASK ;
 int PRCI_CORECLKSEL_OFFSET ;
 int __prci_readl (struct __prci_data*,int ) ;
 int __prci_writel (int ,int ,struct __prci_data*) ;

__attribute__((used)) static void __prci_coreclksel_use_corepll(struct __prci_data *pd)
{
 u32 r;

 r = __prci_readl(pd, PRCI_CORECLKSEL_OFFSET);
 r &= ~PRCI_CORECLKSEL_CORECLKSEL_MASK;
 __prci_writel(r, PRCI_CORECLKSEL_OFFSET, pd);

 r = __prci_readl(pd, PRCI_CORECLKSEL_OFFSET);
}
