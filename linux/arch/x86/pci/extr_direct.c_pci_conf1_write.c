
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int EINVAL ;
 int PCI_CONF1_ADDRESS (unsigned int,unsigned int,int) ;
 int outb (int ,int) ;
 int outl (int ,int) ;
 int outw (int ,int) ;
 int pci_config_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pci_conf1_write(unsigned int seg, unsigned int bus,
      unsigned int devfn, int reg, int len, u32 value)
{
 unsigned long flags;

 if (seg || (bus > 255) || (devfn > 255) || (reg > 4095))
  return -EINVAL;

 raw_spin_lock_irqsave(&pci_config_lock, flags);

 outl(PCI_CONF1_ADDRESS(bus, devfn, reg), 0xCF8);

 switch (len) {
 case 1:
  outb((u8)value, 0xCFC + (reg & 3));
  break;
 case 2:
  outw((u16)value, 0xCFC + (reg & 2));
  break;
 case 4:
  outl((u32)value, 0xCFC);
  break;
 }

 raw_spin_unlock_irqrestore(&pci_config_lock, flags);

 return 0;
}
