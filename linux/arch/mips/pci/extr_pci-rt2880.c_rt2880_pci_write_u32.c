
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RT2880_PCI_REG_CONFIG_ADDR ;
 int RT2880_PCI_REG_CONFIG_DATA ;
 int rt2880_pci_get_cfgaddr (int ,int ,int ,unsigned long) ;
 int rt2880_pci_lock ;
 int rt2880_pci_reg_write (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void rt2880_pci_write_u32(unsigned long reg, u32 val)
{
 unsigned long flags;
 u32 address;

 address = rt2880_pci_get_cfgaddr(0, 0, 0, reg);

 spin_lock_irqsave(&rt2880_pci_lock, flags);
 rt2880_pci_reg_write(address, RT2880_PCI_REG_CONFIG_ADDR);
 rt2880_pci_reg_write(val, RT2880_PCI_REG_CONFIG_DATA);
 spin_unlock_irqrestore(&rt2880_pci_lock, flags);
}
