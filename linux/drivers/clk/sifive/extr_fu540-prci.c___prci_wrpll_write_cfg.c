
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wrpll_cfg {int dummy; } ;
struct __prci_wrpll_data {int c; int cfg0_offs; } ;
struct __prci_data {int dummy; } ;


 int __prci_writel (int ,int ,struct __prci_data*) ;
 int __prci_wrpll_pack (struct wrpll_cfg*) ;
 int memcpy (int *,struct wrpll_cfg*,int) ;

__attribute__((used)) static void __prci_wrpll_write_cfg(struct __prci_data *pd,
       struct __prci_wrpll_data *pwd,
       struct wrpll_cfg *c)
{
 __prci_writel(__prci_wrpll_pack(c), pwd->cfg0_offs, pd);

 memcpy(&pwd->c, c, sizeof(*c));
}
