
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ioread32 (unsigned int) ;
 unsigned int pcie_base ;

__attribute__((used)) static inline u32 pcie_r32(unsigned reg)
{
 return ioread32(pcie_base + reg);
}
