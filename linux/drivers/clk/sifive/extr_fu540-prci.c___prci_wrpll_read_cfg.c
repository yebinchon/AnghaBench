
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __prci_wrpll_data {int cfg0_offs; int c; } ;
struct __prci_data {int dummy; } ;


 int __prci_readl (struct __prci_data*,int ) ;
 int __prci_wrpll_unpack (int *,int ) ;

__attribute__((used)) static void __prci_wrpll_read_cfg(struct __prci_data *pd,
      struct __prci_wrpll_data *pwd)
{
 __prci_wrpll_unpack(&pwd->c, __prci_readl(pd, pwd->cfg0_offs));
}
