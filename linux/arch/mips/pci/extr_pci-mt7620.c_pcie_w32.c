
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int iowrite32 (int ,unsigned int) ;
 unsigned int pcie_base ;

__attribute__((used)) static inline void pcie_w32(u32 val, unsigned reg)
{
 iowrite32(val, pcie_base + reg);
}
