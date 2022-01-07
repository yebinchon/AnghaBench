
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
typedef int bot_state_t ;
struct TYPE_2__ {int maxclients; } ;


 scalar_t__ BotSameTeam (int *,int) ;
 int ClientName (int,char*,int) ;
 int MAX_INFO_STRING ;
 int Q_stricmp (char*,char*) ;
 TYPE_1__ level ;
 scalar_t__ stristr (char*,char*) ;

int FindEnemyByName(bot_state_t *bs, char *name) {
 int i;
 char buf[MAX_INFO_STRING];

 for (i = 0; i < level.maxclients; i++) {
  if (BotSameTeam(bs, i)) continue;
  ClientName(i, buf, sizeof(buf));
  if (!Q_stricmp(buf, name)) return i;
 }
 for (i = 0; i < level.maxclients; i++) {
  if (BotSameTeam(bs, i)) continue;
  ClientName(i, buf, sizeof(buf));
  if (stristr(buf, name)) return i;
 }
 return -1;
}
