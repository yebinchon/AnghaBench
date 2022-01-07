
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int usercmd_t ;
struct TYPE_5__ {scalar_t__ state; int lastUsercmd; } ;
typedef TYPE_1__ client_t ;
struct TYPE_6__ {int clients; } ;


 scalar_t__ CS_ACTIVE ;
 int GAME_CLIENT_THINK ;
 int VM_Call (int ,int ,TYPE_1__*) ;
 int gvm ;
 TYPE_2__ svs ;

void SV_ClientThink (client_t *cl, usercmd_t *cmd) {
 cl->lastUsercmd = *cmd;

 if ( cl->state != CS_ACTIVE ) {
  return;
 }

 VM_Call( gvm, GAME_CLIENT_THINK, cl - svs.clients );
}
