
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_bat {int batl; int batu; } ;


 struct ppc_bat** BATS ;
 int CONFIG_PPC_BOOK3S_601 ;
 scalar_t__ IS_ENABLED (int ) ;
 int MMU_FTR_USE_HIGH_BATS ;
 scalar_t__ mmu_has_feature (int ) ;

__attribute__((used)) static int find_free_bat(void)
{
 int b;

 if (IS_ENABLED(CONFIG_PPC_BOOK3S_601)) {
  for (b = 0; b < 4; b++) {
   struct ppc_bat *bat = BATS[b];

   if (!(bat[0].batl & 0x40))
    return b;
  }
 } else {
  int n = mmu_has_feature(MMU_FTR_USE_HIGH_BATS) ? 8 : 4;

  for (b = 0; b < n; b++) {
   struct ppc_bat *bat = BATS[b];

   if (!(bat[1].batu & 3))
    return b;
  }
 }
 return -1;
}
