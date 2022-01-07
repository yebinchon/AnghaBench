
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_FREE_WEAPON_STATE ;
 int syscall (int ,int) ;

void trap_BotFreeWeaponState(int weaponstate) {
 syscall( BOTLIB_AI_FREE_WEAPON_STATE, weaponstate );
}
