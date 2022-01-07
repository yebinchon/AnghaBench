
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct __prci_data {scalar_t__ va; } ;


 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static void __prci_writel(u32 v, u32 offs, struct __prci_data *pd)
{
 writel_relaxed(v, pd->va + offs);
}
