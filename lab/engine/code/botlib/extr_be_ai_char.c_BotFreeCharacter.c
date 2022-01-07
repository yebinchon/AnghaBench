
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BotFreeCharacter2 (int) ;
 int LibVarGetValue (char*) ;

void BotFreeCharacter(int handle)
{
 if (!LibVarGetValue("bot_reloadcharacters")) return;
 BotFreeCharacter2(handle);
}
