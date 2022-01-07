
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ weaponstate; } ;
struct TYPE_5__ {int weaponnum; int client; int weaponchange_time; int inventory; int ws; TYPE_1__ cur_ps; } ;
typedef TYPE_2__ bot_state_t ;


 int FloatTime () ;
 scalar_t__ WEAPON_DROPPING ;
 scalar_t__ WEAPON_RAISING ;
 int trap_BotChooseBestFightWeapon (int ,int ) ;
 int trap_EA_SelectWeapon (int ,int) ;

void BotChooseWeapon(bot_state_t *bs) {
 int newweaponnum;

 if (bs->cur_ps.weaponstate == WEAPON_RAISING ||
   bs->cur_ps.weaponstate == WEAPON_DROPPING) {
  trap_EA_SelectWeapon(bs->client, bs->weaponnum);
 }
 else {
  newweaponnum = trap_BotChooseBestFightWeapon(bs->ws, bs->inventory);
  if (bs->weaponnum != newweaponnum) bs->weaponchange_time = FloatTime();
  bs->weaponnum = newweaponnum;

  trap_EA_SelectWeapon(bs->client, bs->weaponnum);
 }
}
