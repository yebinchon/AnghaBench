
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ rt2880_pci_base ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void rt2880_pci_reg_write(u32 val, u32 reg)
{
 writel(val, rt2880_pci_base + reg);
}
