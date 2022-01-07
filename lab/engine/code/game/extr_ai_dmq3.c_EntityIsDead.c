
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_5__ {scalar_t__ pm_type; } ;
typedef TYPE_1__ playerState_t ;
struct TYPE_6__ {scalar_t__ number; } ;
typedef TYPE_2__ aas_entityinfo_t ;


 int BotAI_GetClientState (scalar_t__,TYPE_1__*) ;
 scalar_t__ MAX_CLIENTS ;
 scalar_t__ PM_NORMAL ;
 int qfalse ;
 int qtrue ;

qboolean EntityIsDead(aas_entityinfo_t *entinfo) {
 playerState_t ps;

 if (entinfo->number >= 0 && entinfo->number < MAX_CLIENTS) {

  if (!BotAI_GetClientState(entinfo->number, &ps)) {
   return qfalse;
  }

  if (ps.pm_type != PM_NORMAL) return qtrue;
 }
 return qfalse;
}
