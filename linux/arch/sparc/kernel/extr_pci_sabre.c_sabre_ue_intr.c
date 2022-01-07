
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_pbm_info {unsigned long controller_regs; int name; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned long SABRE_UEAFSR_BLK ;
 unsigned long SABRE_UEAFSR_BMSK ;
 unsigned long SABRE_UEAFSR_OFF ;
 unsigned long SABRE_UEAFSR_PDRD ;
 unsigned long SABRE_UEAFSR_PDTE ;
 unsigned long SABRE_UEAFSR_PDWR ;
 unsigned long SABRE_UEAFSR_SDRD ;
 unsigned long SABRE_UEAFSR_SDTE ;
 unsigned long SABRE_UEAFSR_SDWR ;
 unsigned long SABRE_UECE_AFAR ;
 unsigned long SABRE_UE_AFSR ;
 int UE_ERR ;
 int printk (char*,...) ;
 int psycho_check_iommu_error (struct pci_pbm_info*,unsigned long,unsigned long,int ) ;
 unsigned long upa_readq (unsigned long) ;
 int upa_writeq (unsigned long,unsigned long) ;

__attribute__((used)) static irqreturn_t sabre_ue_intr(int irq, void *dev_id)
{
 struct pci_pbm_info *pbm = dev_id;
 unsigned long afsr_reg = pbm->controller_regs + SABRE_UE_AFSR;
 unsigned long afar_reg = pbm->controller_regs + SABRE_UECE_AFAR;
 unsigned long afsr, afar, error_bits;
 int reported;


 afar = upa_readq(afar_reg);
 afsr = upa_readq(afsr_reg);


 error_bits = afsr &
  (SABRE_UEAFSR_PDRD | SABRE_UEAFSR_PDWR |
   SABRE_UEAFSR_SDRD | SABRE_UEAFSR_SDWR |
   SABRE_UEAFSR_SDTE | SABRE_UEAFSR_PDTE);
 if (!error_bits)
  return IRQ_NONE;
 upa_writeq(error_bits, afsr_reg);


 printk("%s: Uncorrectable Error, primary error type[%s%s]\n",
        pbm->name,
        ((error_bits & SABRE_UEAFSR_PDRD) ?
  "DMA Read" :
  ((error_bits & SABRE_UEAFSR_PDWR) ?
   "DMA Write" : "???")),
        ((error_bits & SABRE_UEAFSR_PDTE) ?
  ":Translation Error" : ""));
 printk("%s: bytemask[%04lx] dword_offset[%lx] was_block(%d)\n",
        pbm->name,
        (afsr & SABRE_UEAFSR_BMSK) >> 32UL,
        (afsr & SABRE_UEAFSR_OFF) >> 29UL,
        ((afsr & SABRE_UEAFSR_BLK) ? 1 : 0));
 printk("%s: UE AFAR [%016lx]\n", pbm->name, afar);
 printk("%s: UE Secondary errors [", pbm->name);
 reported = 0;
 if (afsr & SABRE_UEAFSR_SDRD) {
  reported++;
  printk("(DMA Read)");
 }
 if (afsr & SABRE_UEAFSR_SDWR) {
  reported++;
  printk("(DMA Write)");
 }
 if (afsr & SABRE_UEAFSR_SDTE) {
  reported++;
  printk("(Translation Error)");
 }
 if (!reported)
  printk("(none)");
 printk("]\n");


 psycho_check_iommu_error(pbm, afsr, afar, UE_ERR);

 return IRQ_HANDLED;
}
