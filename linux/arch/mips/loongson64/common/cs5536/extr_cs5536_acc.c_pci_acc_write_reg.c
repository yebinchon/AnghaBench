
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CS5536_ACC_INTR ;
 int DIVIL_MSR_REG (int ) ;
 int GLCP_MSR_REG (int ) ;
 int GLCP_SOFT_COM ;
 int GLIU_IOD_BM1 ;
 int GLIU_MSR_REG (int ) ;
 int GLIU_PAE ;


 int PCI_BAR_RANGE_MASK ;

 int PCI_COMMAND_MASTER ;

 int PCI_STATUS_PARITY ;
 int PIC_YSEL_LOW ;
 int PIC_YSEL_LOW_ACC_SHIFT ;
 int SB_ERROR ;
 int SB_MSR_REG (int ) ;
 int SB_PARE_ERR_FLAG ;
 int SOFT_BAR_ACC_FLAG ;
 int _rdmsr (int ,int*,int*) ;
 int _wrmsr (int ,int,int) ;

void pci_acc_write_reg(int reg, u32 value)
{
 u32 hi = 0, lo = value;

 switch (reg) {
 case 129:
  _rdmsr(GLIU_MSR_REG(GLIU_PAE), &hi, &lo);
  if (value & PCI_COMMAND_MASTER)
   lo |= (0x03 << 8);
  else
   lo &= ~(0x03 << 8);
  _wrmsr(GLIU_MSR_REG(GLIU_PAE), hi, lo);
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
 case 130:
  if (value == PCI_BAR_RANGE_MASK) {
   _rdmsr(GLCP_MSR_REG(GLCP_SOFT_COM), &hi, &lo);
   lo |= SOFT_BAR_ACC_FLAG;
   _wrmsr(GLCP_MSR_REG(GLCP_SOFT_COM), hi, lo);
  } else if (value & 0x01) {
   value &= 0xfffffffc;
   hi = 0xA0000000 | ((value & 0x000ff000) >> 12);
   lo = 0x000fff80 | ((value & 0x00000fff) << 20);
   _wrmsr(GLIU_MSR_REG(GLIU_IOD_BM1), hi, lo);
  }
  break;
 case 131:
  _rdmsr(DIVIL_MSR_REG(PIC_YSEL_LOW), &hi, &lo);

  lo &= ~(0xf << PIC_YSEL_LOW_ACC_SHIFT);
  if (value)
   lo |= (CS5536_ACC_INTR << PIC_YSEL_LOW_ACC_SHIFT);
  _wrmsr(DIVIL_MSR_REG(PIC_YSEL_LOW), hi, lo);
  break;
 default:
  break;
 }
}
