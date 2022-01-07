
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GLCP_MSR_REG (int ) ;
 int GLCP_SOFT_COM ;
 int PCI_BAR_RANGE_MASK ;
 int _rdmsr (int ,int*,int*) ;
 int _wrmsr (int ,int,int) ;
 int* bar_space_len ;
 int* bar_space_range ;
 int * divil_msr_reg ;
 int * sb_msr_reg ;
 int* soft_bar_flag ;

void pci_isa_write_bar(int n, u32 value)
{
 u32 hi = 0, lo = value;

 if (value == PCI_BAR_RANGE_MASK) {
  _rdmsr(GLCP_MSR_REG(GLCP_SOFT_COM), &hi, &lo);
  lo |= soft_bar_flag[n];
  _wrmsr(GLCP_MSR_REG(GLCP_SOFT_COM), hi, lo);
 } else if (value & 0x01) {

  hi = 0x0000f001;
  lo &= bar_space_range[n];
  _wrmsr(divil_msr_reg[n], hi, lo);


  hi = ((value & 0x000ffffc) << 12) |
      ((bar_space_len[n] - 4) << 12) | 0x01;
  lo = ((value & 0x000ffffc) << 12) | 0x01;
  _wrmsr(sb_msr_reg[n], hi, lo);
 }
}
