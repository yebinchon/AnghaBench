
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnv_phb {unsigned int msi_base; int opal_id; } ;
struct pnv_ioda_pe {scalar_t__ mve_number; int pe_number; } ;
struct pci_dev {scalar_t__ no_64bit_msi; } ;
struct msi_msg {int address_hi; int address_lo; void* data; } ;
typedef int __be64 ;
typedef int __be32 ;


 int EIO ;
 int ENXIO ;
 void* be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int opal_get_msi_32 (int ,scalar_t__,unsigned int,int,int *,int *) ;
 int opal_get_msi_64 (int ,scalar_t__,unsigned int,int,int *,int *) ;
 int opal_pci_set_xive_pe (int ,int ,unsigned int) ;
 int pci_name (struct pci_dev*) ;
 struct pnv_ioda_pe* pnv_ioda_get_pe (struct pci_dev*) ;
 int pnv_set_msi_irq_chip (struct pnv_phb*,unsigned int) ;
 int pr_devel (char*,int ,char*,unsigned int,unsigned int,int,int,int ,int ) ;
 int pr_warn (char*,int ,int,...) ;

__attribute__((used)) static int pnv_pci_ioda_msi_setup(struct pnv_phb *phb, struct pci_dev *dev,
      unsigned int hwirq, unsigned int virq,
      unsigned int is_64, struct msi_msg *msg)
{
 struct pnv_ioda_pe *pe = pnv_ioda_get_pe(dev);
 unsigned int xive_num = hwirq - phb->msi_base;
 __be32 data;
 int rc;


 if (pe == ((void*)0))
  return -ENXIO;


 if (pe->mve_number < 0)
  return -ENXIO;


 if (dev->no_64bit_msi)
  is_64 = 0;


 rc = opal_pci_set_xive_pe(phb->opal_id, pe->pe_number, xive_num);
 if (rc) {
  pr_warn("%s: OPAL error %d setting XIVE %d PE\n",
   pci_name(dev), rc, xive_num);
  return -EIO;
 }

 if (is_64) {
  __be64 addr64;

  rc = opal_get_msi_64(phb->opal_id, pe->mve_number, xive_num, 1,
         &addr64, &data);
  if (rc) {
   pr_warn("%s: OPAL error %d getting 64-bit MSI data\n",
    pci_name(dev), rc);
   return -EIO;
  }
  msg->address_hi = be64_to_cpu(addr64) >> 32;
  msg->address_lo = be64_to_cpu(addr64) & 0xfffffffful;
 } else {
  __be32 addr32;

  rc = opal_get_msi_32(phb->opal_id, pe->mve_number, xive_num, 1,
         &addr32, &data);
  if (rc) {
   pr_warn("%s: OPAL error %d getting 32-bit MSI data\n",
    pci_name(dev), rc);
   return -EIO;
  }
  msg->address_hi = 0;
  msg->address_lo = be32_to_cpu(addr32);
 }
 msg->data = be32_to_cpu(data);

 pnv_set_msi_irq_chip(phb, virq);

 pr_devel("%s: %s-bit MSI on hwirq %x (xive #%d),"
   " address=%x_%08x data=%x PE# %x\n",
   pci_name(dev), is_64 ? "64" : "32", hwirq, xive_num,
   msg->address_hi, msg->address_lo, data, pe->pe_number);

 return 0;
}
