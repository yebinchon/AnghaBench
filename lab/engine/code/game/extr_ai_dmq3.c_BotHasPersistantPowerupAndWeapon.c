
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* inventory; } ;
typedef TYPE_1__ bot_state_t ;


 size_t INVENTORY_AMMOREGEN ;
 size_t INVENTORY_ARMOR ;
 size_t INVENTORY_BELT ;
 size_t INVENTORY_BFG10K ;
 size_t INVENTORY_BFGAMMO ;
 size_t INVENTORY_CELLS ;
 size_t INVENTORY_CHAINGUN ;
 size_t INVENTORY_DOUBLER ;
 size_t INVENTORY_GUARD ;
 size_t INVENTORY_HEALTH ;
 size_t INVENTORY_LIGHTNING ;
 size_t INVENTORY_LIGHTNINGAMMO ;
 size_t INVENTORY_MINES ;
 size_t INVENTORY_NAILGUN ;
 size_t INVENTORY_NAILS ;
 size_t INVENTORY_PLASMAGUN ;
 size_t INVENTORY_PROXLAUNCHER ;
 size_t INVENTORY_RAILGUN ;
 size_t INVENTORY_ROCKETLAUNCHER ;
 size_t INVENTORY_ROCKETS ;
 size_t INVENTORY_SCOUT ;
 size_t INVENTORY_SLUGS ;
 int qfalse ;
 int qtrue ;

int BotHasPersistantPowerupAndWeapon(bot_state_t *bs) {
 if (bs->inventory[INVENTORY_HEALTH] < 60) return qfalse;

 if (bs->inventory[INVENTORY_HEALTH] < 80) {

  if (bs->inventory[INVENTORY_ARMOR] < 40) return qfalse;
 }

 if (bs->inventory[INVENTORY_BFG10K] > 0 &&
   bs->inventory[INVENTORY_BFGAMMO] > 7) return qtrue;

 if (bs->inventory[INVENTORY_RAILGUN] > 0 &&
   bs->inventory[INVENTORY_SLUGS] > 5) return qtrue;

 if (bs->inventory[INVENTORY_LIGHTNING] > 0 &&
   bs->inventory[INVENTORY_LIGHTNINGAMMO] > 50) return qtrue;

 if (bs->inventory[INVENTORY_ROCKETLAUNCHER] > 0 &&
   bs->inventory[INVENTORY_ROCKETS] > 5) return qtrue;

 if (bs->inventory[INVENTORY_NAILGUN] > 0 &&
   bs->inventory[INVENTORY_NAILS] > 5) return qtrue;

 if (bs->inventory[INVENTORY_PROXLAUNCHER] > 0 &&
   bs->inventory[INVENTORY_MINES] > 5) return qtrue;

 if (bs->inventory[INVENTORY_CHAINGUN] > 0 &&
   bs->inventory[INVENTORY_BELT] > 40) return qtrue;

 if (bs->inventory[INVENTORY_PLASMAGUN] > 0 &&
   bs->inventory[INVENTORY_CELLS] > 20) return qtrue;
 return qfalse;
}
