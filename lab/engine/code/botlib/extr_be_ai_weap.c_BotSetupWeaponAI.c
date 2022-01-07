
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Print ) (int ,char*) ;} ;


 int BLERR_CANNOTLOADWEAPONCONFIG ;
 int BLERR_NOERROR ;
 int DumpWeaponConfig (int ) ;
 char* LibVarString (char*,char*) ;
 int LoadWeaponConfig (char*) ;
 int PRT_FATAL ;
 TYPE_1__ botimport ;
 int stub1 (int ,char*) ;
 int weaponconfig ;

int BotSetupWeaponAI(void)
{
 char *file;

 file = LibVarString("weaponconfig", "weapons.c");
 weaponconfig = LoadWeaponConfig(file);
 if (!weaponconfig)
 {
  botimport.Print(PRT_FATAL, "couldn't load the weapon config\n");
  return BLERR_CANNOTLOADWEAPONCONFIG;
 }





 return BLERR_NOERROR;
}
