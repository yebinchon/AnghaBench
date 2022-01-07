
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int svFlags; } ;
struct TYPE_12__ {TYPE_3__ r; TYPE_2__* client; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_14__ {int integer; } ;
struct TYPE_13__ {int time; } ;
struct TYPE_9__ {int cmd; } ;
struct TYPE_10__ {int lastCmdTime; TYPE_1__ pers; } ;


 int ClientThink_real (TYPE_4__*) ;
 int SVF_BOT ;
 TYPE_4__* g_entities ;
 TYPE_6__ g_synchronousClients ;
 TYPE_5__ level ;
 int trap_GetUsercmd (int,int *) ;

void ClientThink( int clientNum ) {
 gentity_t *ent;

 ent = g_entities + clientNum;
 trap_GetUsercmd( clientNum, &ent->client->pers.cmd );



 ent->client->lastCmdTime = level.time;

 if ( !(ent->r.svFlags & SVF_BOT) && !g_synchronousClients.integer ) {
  ClientThink_real( ent );
 }
}
