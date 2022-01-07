
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt3883_pci_controller {unsigned int base; } ;


 int ioread32 (unsigned int) ;

__attribute__((used)) static inline u32 rt3883_pci_r32(struct rt3883_pci_controller *rpc,
     unsigned reg)
{
 return ioread32(rpc->base + reg);
}
