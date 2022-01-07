
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
typedef int bot_state_t ;
struct TYPE_2__ {int maxclients; } ;


 int BotSameTeam (int *,int) ;
 scalar_t__ CS_PLAYERS ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_INFO_STRING ;
 int Q_CleanStr (char*) ;
 int Q_stricmp (int ,char*) ;
 TYPE_1__ level ;
 int trap_GetConfigstring (scalar_t__,char*,int) ;

int ClientOnSameTeamFromName(bot_state_t *bs, char *name) {
 int i;
 char buf[MAX_INFO_STRING];

 for (i = 0; i < level.maxclients; i++) {
  if (!BotSameTeam(bs, i))
   continue;
  trap_GetConfigstring(CS_PLAYERS+i, buf, sizeof(buf));
  Q_CleanStr( buf );
  if (!Q_stricmp(Info_ValueForKey(buf, "n"), name)) return i;
 }
 return -1;
}
