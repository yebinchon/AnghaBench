
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf ;
struct TYPE_5__ {int inuse; } ;
struct TYPE_4__ {int maxclients; } ;


 int BotSetInfoConfigString (TYPE_2__*) ;
 scalar_t__ CS_PLAYERS ;
 char* Info_ValueForKey (char*,char*) ;
 int MAX_INFO_STRING ;
 TYPE_2__** botstates ;
 TYPE_1__ level ;
 int strlen (char*) ;
 int trap_GetConfigstring (scalar_t__,char*,int) ;

void BotUpdateInfoConfigStrings(void) {
 int i;
 char buf[MAX_INFO_STRING];

 for (i = 0; i < level.maxclients; i++) {

  if ( !botstates[i] || !botstates[i]->inuse )
   continue;

  trap_GetConfigstring(CS_PLAYERS+i, buf, sizeof(buf));

  if (!strlen(buf) || !strlen(Info_ValueForKey(buf, "n")))
   continue;
  BotSetInfoConfigString(botstates[i]);
 }
}
