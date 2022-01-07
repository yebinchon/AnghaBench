
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct driver_data {scalar_t__ mmio; } ;


 scalar_t__ HOST_HSORG ;
 int HSORG_DISABLE_SLOTGRP_INTR ;
 int HSORG_DISABLE_SLOTGRP_PXIS ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void hba_setup(struct driver_data *dd)
{
 u32 hwdata;
 hwdata = readl(dd->mmio + HOST_HSORG);


 writel(hwdata |
  HSORG_DISABLE_SLOTGRP_INTR |
  HSORG_DISABLE_SLOTGRP_PXIS,
  dd->mmio + HOST_HSORG);
}
