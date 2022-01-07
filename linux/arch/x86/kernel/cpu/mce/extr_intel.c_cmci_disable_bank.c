
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cmci_disable_bank (int) ;
 int cmci_discover_lock ;
 int cmci_supported (int*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void cmci_disable_bank(int bank)
{
 int banks;
 unsigned long flags;

 if (!cmci_supported(&banks))
  return;

 raw_spin_lock_irqsave(&cmci_discover_lock, flags);
 __cmci_disable_bank(bank);
 raw_spin_unlock_irqrestore(&cmci_discover_lock, flags);
}
