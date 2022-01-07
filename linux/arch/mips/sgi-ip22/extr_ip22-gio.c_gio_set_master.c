
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gio_device {int slotno; } ;
struct TYPE_2__ {int giopar; } ;


 int SGIMC_GIOPAR_MASTEREXP0 ;
 int SGIMC_GIOPAR_MASTEREXP1 ;
 int SGIMC_GIOPAR_MASTERGFX ;
 TYPE_1__* sgimc ;

void gio_set_master(struct gio_device *dev)
{
 u32 tmp = sgimc->giopar;

 switch (dev->slotno) {
 case 0:
  tmp |= SGIMC_GIOPAR_MASTERGFX;
  break;
 case 1:
  tmp |= SGIMC_GIOPAR_MASTEREXP0;
  break;
 case 2:
  tmp |= SGIMC_GIOPAR_MASTEREXP1;
  break;
 }
 sgimc->giopar = tmp;
}
