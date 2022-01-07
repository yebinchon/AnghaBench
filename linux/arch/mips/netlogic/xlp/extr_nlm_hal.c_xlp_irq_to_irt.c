
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
 int PIC_IRT_PCIE_LINK_INDEX (scalar_t__) ;






 int PIC_PCIE_LINK_LEGACY_IRQ (int) ;
 scalar_t__ PIC_PCIE_LINK_LEGACY_IRQ_BASE ;




 int XLP2XX_IO_I2C_OFFSET (int ) ;
 int XLP2XX_IO_USB_XHCI0_OFFSET (int ) ;
 int XLP2XX_IO_USB_XHCI1_OFFSET (int ) ;
 int XLP2XX_IO_USB_XHCI2_OFFSET (int ) ;
 int XLP_IO_GPIO_OFFSET (int ) ;
 int XLP_IO_I2C0_OFFSET (int ) ;
 int XLP_IO_MMC_OFFSET (int ) ;
 int XLP_IO_NAND_OFFSET (int ) ;
 int XLP_IO_SATA_OFFSET (int ) ;
 int XLP_IO_SPI_OFFSET (int ) ;
 int XLP_IO_UART0_OFFSET (int ) ;
 int XLP_IO_UART1_OFFSET (int ) ;
 int XLP_IO_USB_EHCI0_OFFSET (int ) ;
 int XLP_IO_USB_EHCI1_OFFSET (int ) ;
 int XLP_IO_USB_OHCI0_OFFSET (int ) ;
 int XLP_IO_USB_OHCI1_OFFSET (int ) ;
 int XLP_IO_USB_OHCI2_OFFSET (int ) ;
 int XLP_IO_USB_OHCI3_OFFSET (int ) ;
 int XLP_PCI_IRTINFO_REG ;
 int cpu_is_xlpii () ;
 int nlm_pcicfg_base (int) ;
 int nlm_read_reg (int ,int ) ;

__attribute__((used)) static int xlp_irq_to_irt(int irq)
{
 uint64_t pcibase;
 int devoff, irt;

 devoff = 0;
 switch (irq) {
 case 129:
  devoff = XLP_IO_UART0_OFFSET(0);
  break;
 case 128:
  devoff = XLP_IO_UART1_OFFSET(0);
  break;
 case 137:
  devoff = XLP_IO_MMC_OFFSET(0);
  break;
 case 141:
 case 140:
 case 139:
 case 138:
  if (cpu_is_xlpii())
   devoff = XLP2XX_IO_I2C_OFFSET(0);
  else
   devoff = XLP_IO_I2C0_OFFSET(0);
  break;
 case 131:
  devoff = XLP_IO_SATA_OFFSET(0);
  break;
 case 142:
  devoff = XLP_IO_GPIO_OFFSET(0);
  break;
 case 136:
  devoff = XLP_IO_NAND_OFFSET(0);
  break;
 case 130:
  devoff = XLP_IO_SPI_OFFSET(0);
  break;
 default:
  if (cpu_is_xlpii()) {
   switch (irq) {

   case 147:
    devoff = XLP2XX_IO_USB_XHCI0_OFFSET(0);
    break;
   case 146:
    devoff = XLP2XX_IO_USB_XHCI1_OFFSET(0);
    break;
   case 145:
    devoff = XLP2XX_IO_USB_XHCI2_OFFSET(0);
    break;
   }
  } else {
   switch (irq) {
   case 144:
    devoff = XLP_IO_USB_EHCI0_OFFSET(0);
    break;
   case 143:
    devoff = XLP_IO_USB_EHCI1_OFFSET(0);
    break;
   case 135:
    devoff = XLP_IO_USB_OHCI0_OFFSET(0);
    break;
   case 134:
    devoff = XLP_IO_USB_OHCI1_OFFSET(0);
    break;
   case 133:
    devoff = XLP_IO_USB_OHCI2_OFFSET(0);
    break;
   case 132:
    devoff = XLP_IO_USB_OHCI3_OFFSET(0);
    break;
   }
  }
 }

 if (devoff != 0) {
  uint32_t val;

  pcibase = nlm_pcicfg_base(devoff);
  val = nlm_read_reg(pcibase, XLP_PCI_IRTINFO_REG);
  if (val == 0xffffffff) {
   irt = -1;
  } else {
   irt = val & 0xffff;

   switch (irq) {
   case 140:
    irt = irt + 1; break;
   case 139:
    irt = irt + 2; break;
   case 138:
    irt = irt + 3; break;
   }
  }
 } else if (irq >= PIC_PCIE_LINK_LEGACY_IRQ(0) &&
   irq <= PIC_PCIE_LINK_LEGACY_IRQ(3)) {

  irt = PIC_IRT_PCIE_LINK_INDEX(irq -
     PIC_PCIE_LINK_LEGACY_IRQ_BASE);
 } else {
  irt = -1;
 }
 return irt;
}
