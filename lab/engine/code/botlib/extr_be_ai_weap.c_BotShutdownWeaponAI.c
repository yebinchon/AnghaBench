
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BotFreeWeaponState (int) ;
 int FreeMemory (int *) ;
 int MAX_CLIENTS ;
 scalar_t__* botweaponstates ;
 int * weaponconfig ;

void BotShutdownWeaponAI(void)
{
 int i;

 if (weaponconfig) FreeMemory(weaponconfig);
 weaponconfig = ((void*)0);

 for (i = 1; i <= MAX_CLIENTS; i++)
 {
  if (botweaponstates[i])
  {
   BotFreeWeaponState(i);
  }
 }
}
