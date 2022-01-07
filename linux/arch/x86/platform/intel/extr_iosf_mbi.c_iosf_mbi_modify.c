
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;


 scalar_t__ BT_MBI_UNIT_GFX ;
 int EPERM ;
 int MBI_MASK_HI ;
 int MBI_MASK_LO ;
 int MBI_RD_MASK ;
 int MBI_WR_MASK ;
 int WARN_ON (int) ;
 int iosf_mbi_form_mcr (scalar_t__,scalar_t__,int) ;
 int iosf_mbi_lock ;
 int iosf_mbi_pci_read_mdr (int,int,int*) ;
 int iosf_mbi_pci_write_mdr (int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int iosf_mbi_modify(u8 port, u8 opcode, u32 offset, u32 mdr, u32 mask)
{
 u32 mcr, mcrx;
 u32 value;
 unsigned long flags;
 int ret;


 if (port == BT_MBI_UNIT_GFX) {
  WARN_ON(1);
  return -EPERM;
 }

 mcr = iosf_mbi_form_mcr(opcode, port, offset & MBI_MASK_LO);
 mcrx = offset & MBI_MASK_HI;

 spin_lock_irqsave(&iosf_mbi_lock, flags);


 ret = iosf_mbi_pci_read_mdr(mcrx, mcr & MBI_RD_MASK, &value);
 if (ret < 0) {
  spin_unlock_irqrestore(&iosf_mbi_lock, flags);
  return ret;
 }


 value &= ~mask;
 mdr &= mask;
 value |= mdr;


 ret = iosf_mbi_pci_write_mdr(mcrx, mcr | MBI_WR_MASK, value);

 spin_unlock_irqrestore(&iosf_mbi_lock, flags);

 return ret;
}
