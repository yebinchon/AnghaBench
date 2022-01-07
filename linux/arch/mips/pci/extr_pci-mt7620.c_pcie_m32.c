
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int pcie_r32 (unsigned int) ;
 int pcie_w32 (int ,unsigned int) ;

__attribute__((used)) static inline void pcie_m32(u32 clr, u32 set, unsigned reg)
{
 u32 val = pcie_r32(reg);

 val &= ~clr;
 val |= set;
 pcie_w32(val, reg);
}
