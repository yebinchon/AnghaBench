
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int type; } ;
struct TYPE_10__ {TYPE_2__ remoteAddress; } ;
struct TYPE_11__ {scalar_t__ state; int rate; TYPE_3__ netchan; int lastPacketTime; TYPE_7__* gentity; } ;
typedef TYPE_4__ client_t ;
struct TYPE_8__ {int number; } ;
struct TYPE_14__ {TYPE_1__ s; } ;
struct TYPE_13__ {int integer; } ;
struct TYPE_12__ {int time; TYPE_4__* clients; } ;


 scalar_t__ CS_ACTIVE ;
 scalar_t__ CS_FREE ;
 int NA_BOT ;
 TYPE_7__* SV_GentityNum (int) ;
 TYPE_6__* sv_maxclients ;
 TYPE_5__ svs ;

int SV_BotAllocateClient(void) {
 int i;
 client_t *cl;


 for ( i = 0, cl = svs.clients; i < sv_maxclients->integer; i++, cl++ ) {
  if ( cl->state == CS_FREE ) {
   break;
  }
 }

 if ( i == sv_maxclients->integer ) {
  return -1;
 }

 cl->gentity = SV_GentityNum( i );
 cl->gentity->s.number = i;
 cl->state = CS_ACTIVE;
 cl->lastPacketTime = svs.time;
 cl->netchan.remoteAddress.type = NA_BOT;
 cl->rate = 16384;

 return i;
}
