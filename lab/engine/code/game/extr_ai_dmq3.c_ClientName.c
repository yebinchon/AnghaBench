
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
 int Q_CleanStr (char*) ;
 int strncpy (char*,int ,int) ;
 int trap_GetConfigstring (scalar_t__,char*,int) ;

char *ClientName(int client, char *name, int size) {
 char buf[MAX_INFO_STRING];

 if (client < 0 || client >= MAX_CLIENTS) {
  BotAI_Print(PRT_ERROR, "ClientName: client out of range\n");
  return "[client out of range]";
 }
 trap_GetConfigstring(CS_PLAYERS+client, buf, sizeof(buf));
 strncpy(name, Info_ValueForKey(buf, "n"), size-1);
 name[size-1] = '\0';
 Q_CleanStr( name );
 return name;
}
