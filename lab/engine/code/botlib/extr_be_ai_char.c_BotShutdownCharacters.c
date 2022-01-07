
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BotFreeCharacter2 (int) ;
 int MAX_CLIENTS ;
 scalar_t__* botcharacters ;

void BotShutdownCharacters(void)
{
 int handle;

 for (handle = 1; handle <= MAX_CLIENTS; handle++)
 {
  if (botcharacters[handle])
  {
   BotFreeCharacter2(handle);
  }
 }
}
