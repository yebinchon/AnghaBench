
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_13__ {int time; int entityParsePoint; } ;
struct TYPE_12__ {int integer; } ;
struct TYPE_11__ {TYPE_2__* clients; } ;
struct TYPE_8__ {int (* make_random_seed ) (int ) ;} ;
struct TYPE_10__ {int userdata; TYPE_1__ hooks; } ;
struct TYPE_9__ {int * gentity; } ;
typedef TYPE_3__ DeepmindContext ;


 int CM_EntityString () ;
 int GAME_INIT ;
 int VM_Call (int ,int ,int ,int,int ) ;
 TYPE_3__* dmlab_context () ;
 int gvm ;
 int stub1 (int ) ;
 TYPE_6__ sv ;
 TYPE_5__* sv_maxclients ;
 TYPE_4__ svs ;

__attribute__((used)) static void SV_InitGameVM( qboolean restart ) {
 int i;
 DeepmindContext* ctx = dmlab_context();
 int seed = ctx->hooks.make_random_seed( ctx->userdata );


 sv.entityParsePoint = CM_EntityString();





 for ( i = 0 ; i < sv_maxclients->integer ; i++ ) {
  svs.clients[i].gentity = ((void*)0);
 }




 VM_Call (gvm, GAME_INIT, sv.time, seed, restart);
}
