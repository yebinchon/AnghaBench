
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CS5536_USB_INTR ;
 int DIVIL_MSR_REG (int ) ;
 int GLCP_MSR_REG (int ) ;
 int GLCP_SOFT_COM ;
 int GLIU_MSR_REG (int ) ;
 int GLIU_P2D_BM3 ;

 int PCI_BAR_RANGE_MASK ;

 int PCI_COMMAND_MASTER ;
 int PCI_COMMAND_MEMORY ;


 int PCI_STATUS_PARITY ;
 int PIC_YSEL_LOW ;
 int PIC_YSEL_LOW_USB_SHIFT ;
 int SB_ERROR ;
 int SB_MSR_REG (int ) ;
 int SB_PARE_ERR_FLAG ;
 int SOFT_BAR_OHCI_FLAG ;
 int USB_MSR_REG (int ) ;
 int USB_OHCI ;
 int _rdmsr (int ,int*,int*) ;
 int _wrmsr (int ,int,int) ;

void pci_ohci_write_reg(int reg, u32 value)
{
 u32 hi = 0, lo = value;

 switch (reg) {
 case 130:
  _rdmsr(USB_MSR_REG(USB_OHCI), &hi, &lo);
  if (value & PCI_COMMAND_MASTER)
   hi |= PCI_COMMAND_MASTER;
  else
   hi &= ~PCI_COMMAND_MASTER;

  if (value & PCI_COMMAND_MEMORY)
   hi |= PCI_COMMAND_MEMORY;
  else
   hi &= ~PCI_COMMAND_MEMORY;
  _wrmsr(USB_MSR_REG(USB_OHCI), hi, lo);
  break;
 case 128:
  if (value & PCI_STATUS_PARITY) {
   _rdmsr(SB_MSR_REG(SB_ERROR), &hi, &lo);
   if (lo & SB_PARE_ERR_FLAG) {
    lo = (lo & 0x0000ffff) | SB_PARE_ERR_FLAG;
    _wrmsr(SB_MSR_REG(SB_ERROR), hi, lo);
   }
  }
  break;
 case 131:
  if (value == PCI_BAR_RANGE_MASK) {
   _rdmsr(GLCP_MSR_REG(GLCP_SOFT_COM), &hi, &lo);
   lo |= SOFT_BAR_OHCI_FLAG;
   _wrmsr(GLCP_MSR_REG(GLCP_SOFT_COM), hi, lo);
  } else if ((value & 0x01) == 0x00) {
   _rdmsr(USB_MSR_REG(USB_OHCI), &hi, &lo);
   lo = value;
   _wrmsr(USB_MSR_REG(USB_OHCI), hi, lo);

   value &= 0xfffffff0;
   hi = 0x40000000 | ((value & 0xff000000) >> 24);
   lo = 0x000fffff | ((value & 0x00fff000) << 8);
   _wrmsr(GLIU_MSR_REG(GLIU_P2D_BM3), hi, lo);
  }
  break;
 case 129:
  _rdmsr(DIVIL_MSR_REG(PIC_YSEL_LOW), &hi, &lo);
  lo &= ~(0xf << PIC_YSEL_LOW_USB_SHIFT);
  if (value)
   lo |= (CS5536_USB_INTR << PIC_YSEL_LOW_USB_SHIFT);
  _wrmsr(DIVIL_MSR_REG(PIC_YSEL_LOW), hi, lo);
  break;
 default:
  break;
 }
}
