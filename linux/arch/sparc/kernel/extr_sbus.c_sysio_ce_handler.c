
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct iommu* iommu; } ;
struct TYPE_4__ {int of_node; TYPE_1__ archdata; } ;
struct platform_device {TYPE_2__ dev; } ;
struct iommu {int write_complete_reg; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned long SYSIO_CEAFSR_DOFF ;
 unsigned long SYSIO_CEAFSR_ESYND ;
 unsigned long SYSIO_CEAFSR_MID ;
 unsigned long SYSIO_CEAFSR_PDRD ;
 unsigned long SYSIO_CEAFSR_PDWR ;
 unsigned long SYSIO_CEAFSR_PPIO ;
 unsigned long SYSIO_CEAFSR_SDRD ;
 unsigned long SYSIO_CEAFSR_SDWR ;
 unsigned long SYSIO_CEAFSR_SIZE ;
 unsigned long SYSIO_CEAFSR_SPIO ;
 unsigned long SYSIO_CE_AFAR ;
 unsigned long SYSIO_CE_AFSR ;
 int of_getintprop_default (int ,char*,int) ;
 int printk (char*,...) ;
 unsigned long upa_readq (unsigned long) ;
 int upa_writeq (unsigned long,unsigned long) ;

__attribute__((used)) static irqreturn_t sysio_ce_handler(int irq, void *dev_id)
{
 struct platform_device *op = dev_id;
 struct iommu *iommu = op->dev.archdata.iommu;
 unsigned long reg_base = iommu->write_complete_reg - 0x2000UL;
 unsigned long afsr_reg, afar_reg;
 unsigned long afsr, afar, error_bits;
 int reported, portid;

 afsr_reg = reg_base + SYSIO_CE_AFSR;
 afar_reg = reg_base + SYSIO_CE_AFAR;


 afsr = upa_readq(afsr_reg);
 afar = upa_readq(afar_reg);


 error_bits = afsr &
  (SYSIO_CEAFSR_PPIO | SYSIO_CEAFSR_PDRD | SYSIO_CEAFSR_PDWR |
   SYSIO_CEAFSR_SPIO | SYSIO_CEAFSR_SDRD | SYSIO_CEAFSR_SDWR);
 upa_writeq(error_bits, afsr_reg);

 portid = of_getintprop_default(op->dev.of_node, "portid", -1);

 printk("SYSIO[%x]: Correctable ECC Error, primary error type[%s]\n",
        portid,
        (((error_bits & SYSIO_CEAFSR_PPIO) ?
   "PIO" :
   ((error_bits & SYSIO_CEAFSR_PDRD) ?
    "DVMA Read" :
    ((error_bits & SYSIO_CEAFSR_PDWR) ?
     "DVMA Write" : "???")))));




 printk("SYSIO[%x]: DOFF[%lx] ECC Syndrome[%lx] Size[%lx] MID[%lx]\n",
        portid,
        (afsr & SYSIO_CEAFSR_DOFF) >> 45UL,
        (afsr & SYSIO_CEAFSR_ESYND) >> 48UL,
        (afsr & SYSIO_CEAFSR_SIZE) >> 42UL,
        (afsr & SYSIO_CEAFSR_MID) >> 37UL);
 printk("SYSIO[%x]: AFAR[%016lx]\n", portid, afar);

 printk("SYSIO[%x]: Secondary CE errors [", portid);
 reported = 0;
 if (afsr & SYSIO_CEAFSR_SPIO) {
  reported++;
  printk("(PIO)");
 }
 if (afsr & SYSIO_CEAFSR_SDRD) {
  reported++;
  printk("(DVMA Read)");
 }
 if (afsr & SYSIO_CEAFSR_SDWR) {
  reported++;
  printk("(DVMA Write)");
 }
 if (!reported)
  printk("(none)");
 printk("]\n");

 return IRQ_HANDLED;
}
