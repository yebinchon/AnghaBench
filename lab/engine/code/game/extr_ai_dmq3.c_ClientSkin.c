
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int BotAI_Print (int ,char*) ;
 scalar_t__ CS_PLAYERS ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_CLIENTS ;
 int MAX_INFO_STRING ;
 int PRT_ERROR ;
 int strncpy (char*,int ,int) ;
 int trap_GetConfigstring (scalar_t__,char*,int) ;

char *ClientSkin(int client, char *skin, int size) {
 char buf[MAX_INFO_STRING];

 if (client < 0 || client >= MAX_CLIENTS) {
  BotAI_Print(PRT_ERROR, "ClientSkin: client out of range\n");
  return "[client out of range]";
 }
 trap_GetConfigstring(CS_PLAYERS+client, buf, sizeof(buf));
 strncpy(skin, Info_ValueForKey(buf, "model"), size-1);
 skin[size-1] = '\0';
 return skin;
}
