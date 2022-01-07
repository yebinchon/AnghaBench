
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GLCP_MSR_REG (int ) ;
 int GLCP_SOFT_COM ;
 int PCI_BASE_ADDRESS_SPACE_IO ;
 int _rdmsr (int ,int*,int*) ;
 int _wrmsr (int ,int,int) ;
 int* bar_space_range ;
 int * divil_msr_reg ;
 int* soft_bar_flag ;

u32 pci_isa_read_bar(int n)
{
 u32 conf_data = 0;
 u32 hi, lo;

 _rdmsr(GLCP_MSR_REG(GLCP_SOFT_COM), &hi, &lo);
 if (lo & soft_bar_flag[n]) {
  conf_data = bar_space_range[n] | PCI_BASE_ADDRESS_SPACE_IO;
  lo &= ~soft_bar_flag[n];
  _wrmsr(GLCP_MSR_REG(GLCP_SOFT_COM), hi, lo);
 } else {
  _rdmsr(divil_msr_reg[n], &hi, &lo);
  conf_data = lo & bar_space_range[n];
  conf_data |= 0x01;
  conf_data &= ~0x02;
 }
 return conf_data;
}
