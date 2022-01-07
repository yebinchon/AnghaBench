
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct __prci_data {scalar_t__ va; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 __prci_readl(struct __prci_data *pd, u32 offs)
{
 return readl_relaxed(pd->va + offs);
}
