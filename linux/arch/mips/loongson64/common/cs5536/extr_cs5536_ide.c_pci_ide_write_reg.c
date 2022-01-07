
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CS5536_IDE_FLASH_SIGNATURE ;
 int DIVIL_BALL_OPTS ;
 int DIVIL_MSR_REG (int ) ;
 int GLCP_MSR_REG (int ) ;
 int GLCP_SOFT_COM ;
 int GLIU_IOD_BM2 ;
 int GLIU_MSR_REG (int ) ;
 int GLIU_PAE ;
 int IDE_CAST ;
 int IDE_CFG ;
 int IDE_DTC ;
 int IDE_ETC ;
 int IDE_INTERNAL_PM ;
 int IDE_IO_BAR ;
 int IDE_MSR_REG (int ) ;

 int PCI_BAR_RANGE_MASK ;


 int PCI_COMMAND_MASTER ;






 int PCI_STATUS_PARITY ;
 int SB_CTRL ;
 int SB_ERROR ;
 int SB_MSR_REG (int ) ;
 int SB_PARE_ERR_FLAG ;
 int SOFT_BAR_IDE_FLAG ;
 int _rdmsr (int ,int*,int*) ;
 int _wrmsr (int ,int,int) ;

void pci_ide_write_reg(int reg, u32 value)
{
 u32 hi = 0, lo = value;

 switch (reg) {
 case 134:
  _rdmsr(GLIU_MSR_REG(GLIU_PAE), &hi, &lo);
  if (value & PCI_COMMAND_MASTER)
   lo |= (0x03 << 4);
  else
   lo &= ~(0x03 << 4);
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
 case 135:
  value &= 0x0000ff00;
  _rdmsr(SB_MSR_REG(SB_CTRL), &hi, &lo);
  hi &= 0xffffff00;
  hi |= (value >> 8);
  _wrmsr(SB_MSR_REG(SB_CTRL), hi, lo);
  break;
 case 136:
  if (value == PCI_BAR_RANGE_MASK) {
   _rdmsr(GLCP_MSR_REG(GLCP_SOFT_COM), &hi, &lo);
   lo |= SOFT_BAR_IDE_FLAG;
   _wrmsr(GLCP_MSR_REG(GLCP_SOFT_COM), hi, lo);
  } else if (value & 0x01) {
   _rdmsr(IDE_MSR_REG(IDE_IO_BAR), &hi, &lo);
   lo = (value & 0xfffffff0) | 0x1;
   _wrmsr(IDE_MSR_REG(IDE_IO_BAR), hi, lo);

   value &= 0xfffffffc;
   hi = 0x60000000 | ((value & 0x000ff000) >> 12);
   lo = 0x000ffff0 | ((value & 0x00000fff) << 20);
   _wrmsr(GLIU_MSR_REG(GLIU_IOD_BM2), hi, lo);
  }
  break;
 case 132:
  if (value == CS5536_IDE_FLASH_SIGNATURE) {
   _rdmsr(DIVIL_MSR_REG(DIVIL_BALL_OPTS), &hi, &lo);
   lo |= 0x01;
   _wrmsr(DIVIL_MSR_REG(DIVIL_BALL_OPTS), hi, lo);
  } else {
   _rdmsr(IDE_MSR_REG(IDE_CFG), &hi, &lo);
   lo = value;
   _wrmsr(IDE_MSR_REG(IDE_CFG), hi, lo);
  }
  break;
 case 131:
  _rdmsr(IDE_MSR_REG(IDE_DTC), &hi, &lo);
  lo = value;
  _wrmsr(IDE_MSR_REG(IDE_DTC), hi, lo);
  break;
 case 133:
  _rdmsr(IDE_MSR_REG(IDE_CAST), &hi, &lo);
  lo = value;
  _wrmsr(IDE_MSR_REG(IDE_CAST), hi, lo);
  break;
 case 130:
  _rdmsr(IDE_MSR_REG(IDE_ETC), &hi, &lo);
  lo = value;
  _wrmsr(IDE_MSR_REG(IDE_ETC), hi, lo);
  break;
 case 129:
  _rdmsr(IDE_MSR_REG(IDE_INTERNAL_PM), &hi, &lo);
  lo = value;
  _wrmsr(IDE_MSR_REG(IDE_INTERNAL_PM), hi, lo);
  break;
 default:
  break;
 }
}
