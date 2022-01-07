
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int * PCI_CRP_AD_CBE ;
 int * PCI_CRP_RDATA ;
 int ixp4xx_pci_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void crp_read(u32 ad_cbe, u32 *data)
{
 unsigned long flags;
 raw_spin_lock_irqsave(&ixp4xx_pci_lock, flags);
 *PCI_CRP_AD_CBE = ad_cbe;
 *data = *PCI_CRP_RDATA;
 raw_spin_unlock_irqrestore(&ixp4xx_pci_lock, flags);
}
