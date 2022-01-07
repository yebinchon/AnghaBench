
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_channel {scalar_t__ reg_base; } ;


 unsigned long __raw_readl (scalar_t__) ;

__attribute__((used)) static inline unsigned long pci_read_reg(struct pci_channel *chan,
      unsigned long reg)
{
 return __raw_readl(chan->reg_base + reg);
}
