
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int spectatorLen; int spectatorWidth; scalar_t__* spectatorList; } ;
struct TYPE_5__ {TYPE_1__* clientinfo; } ;
struct TYPE_4__ {scalar_t__ team; int name; scalar_t__ infoValid; } ;


 int MAX_CLIENTS ;
 int Q_strcat (scalar_t__*,int,int ) ;
 scalar_t__ TEAM_SPECTATOR ;
 TYPE_3__ cg ;
 TYPE_2__ cgs ;
 int strlen (scalar_t__*) ;
 int va (char*,int ) ;

void CG_BuildSpectatorString(void) {
 int i;
 cg.spectatorList[0] = 0;
 for (i = 0; i < MAX_CLIENTS; i++) {
  if (cgs.clientinfo[i].infoValid && cgs.clientinfo[i].team == TEAM_SPECTATOR ) {
   Q_strcat(cg.spectatorList, sizeof(cg.spectatorList), va("%s     ", cgs.clientinfo[i].name));
  }
 }
 i = strlen(cg.spectatorList);
 if (i != cg.spectatorLen) {
  cg.spectatorLen = i;
  cg.spectatorWidth = -1;
 }
}
