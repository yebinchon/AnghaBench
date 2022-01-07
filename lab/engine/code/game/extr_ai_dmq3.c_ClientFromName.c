
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
struct TYPE_2__ {int maxclients; } ;


 scalar_t__ CS_PLAYERS ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_INFO_STRING ;
 int Q_CleanStr (char*) ;
 int Q_stricmp (int ,char*) ;
 TYPE_1__ level ;
 int trap_GetConfigstring (scalar_t__,char*,int) ;

int ClientFromName(char *name) {
 int i;
 char buf[MAX_INFO_STRING];

 for (i = 0; i < level.maxclients; i++) {
  trap_GetConfigstring(CS_PLAYERS+i, buf, sizeof(buf));
  Q_CleanStr( buf );
  if (!Q_stricmp(Info_ValueForKey(buf, "n"), name)) return i;
 }
 return -1;
}
