
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mapname ;
typedef int info ;


 int Info_ValueForKey (char*,char*) ;
 int strncpy (char*,int ,int) ;
 int trap_GetServerinfo (char*,int) ;

char *BotMapTitle(void) {
 char info[1024];
 static char mapname[128];

 trap_GetServerinfo(info, sizeof(info));

 strncpy(mapname, Info_ValueForKey( info, "mapname" ), sizeof(mapname)-1);
 mapname[sizeof(mapname)-1] = '\0';

 return mapname;
}
