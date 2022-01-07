
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ readl (scalar_t__) ;
 scalar_t__ rt2880_pci_base ;

__attribute__((used)) static u32 rt2880_pci_reg_read(u32 reg)
{
 return readl(rt2880_pci_base + reg);
}
