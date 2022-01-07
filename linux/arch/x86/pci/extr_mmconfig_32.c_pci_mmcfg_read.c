
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int get_base_addr (unsigned int,unsigned int,unsigned int) ;
 int mmcfg_virt_addr ;
 int mmio_config_readb (int ) ;
 int mmio_config_readl (int ) ;
 int mmio_config_readw (int ) ;
 int pci_config_lock ;
 int pci_exp_set_dev_base (int,unsigned int,unsigned int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int pci_mmcfg_read(unsigned int seg, unsigned int bus,
     unsigned int devfn, int reg, int len, u32 *value)
{
 unsigned long flags;
 u32 base;

 if ((bus > 255) || (devfn > 255) || (reg > 4095)) {
err: *value = -1;
  return -EINVAL;
 }

 rcu_read_lock();
 base = get_base_addr(seg, bus, devfn);
 if (!base) {
  rcu_read_unlock();
  goto err;
 }

 raw_spin_lock_irqsave(&pci_config_lock, flags);

 pci_exp_set_dev_base(base, bus, devfn);

 switch (len) {
 case 1:
  *value = mmio_config_readb(mmcfg_virt_addr + reg);
  break;
 case 2:
  *value = mmio_config_readw(mmcfg_virt_addr + reg);
  break;
 case 4:
  *value = mmio_config_readl(mmcfg_virt_addr + reg);
  break;
 }
 raw_spin_unlock_irqrestore(&pci_config_lock, flags);
 rcu_read_unlock();

 return 0;
}
