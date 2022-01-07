
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Print ) (int ,char*,float,char*) ;} ;


 int BotDumpCharacter (int ) ;
 int BotFindCachedCharacter (char*,float) ;
 int BotInterpolateCharacters (int,int,float) ;
 int BotLoadCharacterSkill (char*,int) ;
 int PRT_MESSAGE ;
 int * botcharacters ;
 TYPE_1__ botimport ;
 int stub1 (int ,char*,float,char*) ;

int BotLoadCharacter(char *charfile, float skill)
{
 int firstskill, secondskill, handle;


 if (skill < 1.0) skill = 1.0;
 else if (skill > 5.0) skill = 5.0;

 if (skill == 1.0 || skill == 4.0 || skill == 5.0)
 {
  return BotLoadCharacterSkill(charfile, skill);
 }

 handle = BotFindCachedCharacter(charfile, skill);
 if (handle)
 {
  botimport.Print(PRT_MESSAGE, "loaded cached skill %f from %s\n", skill, charfile);
  return handle;
 }
 if (skill < 4.0)
 {

  firstskill = BotLoadCharacterSkill(charfile, 1);
  if (!firstskill) return 0;
  secondskill = BotLoadCharacterSkill(charfile, 4);
  if (!secondskill) return firstskill;
 }
 else
 {

  firstskill = BotLoadCharacterSkill(charfile, 4);
  if (!firstskill) return 0;
  secondskill = BotLoadCharacterSkill(charfile, 5);
  if (!secondskill) return firstskill;
 }

 handle = BotInterpolateCharacters(firstskill, secondskill, skill);
 if (!handle) return 0;

 BotDumpCharacter(botcharacters[handle]);

 return handle;
}
