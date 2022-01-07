
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BotDefaultCharacteristics (int ,int ) ;
 int BotLoadCachedCharacter (char*,float,int ) ;
 char* DEFAULT_CHARACTER ;
 int LibVarGetValue (char*) ;
 int * botcharacters ;
 int qfalse ;

int BotLoadCharacterSkill(char *charfile, float skill)
{
 int ch, defaultch;

 defaultch = BotLoadCachedCharacter(DEFAULT_CHARACTER, skill, qfalse);
 ch = BotLoadCachedCharacter(charfile, skill, LibVarGetValue("bot_reloadcharacters"));

 if (defaultch && ch)
 {
  BotDefaultCharacteristics(botcharacters[ch], botcharacters[defaultch]);
 }

 return ch;
}
