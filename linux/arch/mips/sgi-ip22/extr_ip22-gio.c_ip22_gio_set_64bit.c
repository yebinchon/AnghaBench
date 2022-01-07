
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int giopar; } ;


 int SGIMC_GIOPAR_EXP064 ;
 int SGIMC_GIOPAR_EXP164 ;
 int SGIMC_GIOPAR_GFX64 ;
 TYPE_1__* sgimc ;

void ip22_gio_set_64bit(int slotno)
{
 u32 tmp = sgimc->giopar;

 switch (slotno) {
 case 0:
  tmp |= SGIMC_GIOPAR_GFX64;
  break;
 case 1:
  tmp |= SGIMC_GIOPAR_EXP064;
  break;
 case 2:
  tmp |= SGIMC_GIOPAR_EXP164;
  break;
 }
 sgimc->giopar = tmp;
}
