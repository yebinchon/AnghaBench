
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt3883_pci_controller {unsigned int base; } ;


 int iowrite32 (int ,unsigned int) ;

__attribute__((used)) static inline void rt3883_pci_w32(struct rt3883_pci_controller *rpc,
      u32 val, unsigned reg)
{
 iowrite32(val, rpc->base + reg);
}
