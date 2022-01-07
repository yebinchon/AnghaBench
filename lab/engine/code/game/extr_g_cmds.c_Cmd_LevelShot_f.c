
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* client; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_8__ {int localClient; } ;
struct TYPE_9__ {TYPE_1__ pers; } ;


 int BeginIntermission () ;
 int CheatsOk (TYPE_3__*) ;
 scalar_t__ GT_SINGLE_PLAYER ;
 int g_entities ;
 TYPE_5__ g_gametype ;
 int trap_SendServerCommand (TYPE_3__*,char*) ;

void Cmd_LevelShot_f(gentity_t *ent)
{
 if(!ent->client->pers.localClient)
 {
  trap_SendServerCommand(ent-g_entities,
   "print \"The levelshot command must be executed by a local client\n\"");
  return;
 }

 if(!CheatsOk(ent))
  return;


 if(g_gametype.integer == GT_SINGLE_PLAYER)
 {
  trap_SendServerCommand(ent-g_entities,
   "print \"Must not be in singleplayer mode for levelshot\n\"" );
  return;
 }

 BeginIntermission();
 trap_SendServerCommand(ent-g_entities, "clientLevelShot");
}
