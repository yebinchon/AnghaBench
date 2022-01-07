
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lastPacketTime; scalar_t__ state; int timeoutCount; } ;
typedef TYPE_1__ client_t ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {int integer; } ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {int time; TYPE_1__* clients; } ;


 scalar_t__ CS_CONNECTED ;
 void* CS_FREE ;
 scalar_t__ CS_ZOMBIE ;
 int Com_DPrintf (char*,int) ;
 int SV_DropClient (TYPE_1__*,char*) ;
 TYPE_5__* sv_maxclients ;
 TYPE_4__* sv_timeout ;
 TYPE_3__* sv_zombietime ;
 TYPE_2__ svs ;

__attribute__((used)) static void SV_CheckTimeouts( void ) {
 int i;
 client_t *cl;
 int droppoint;
 int zombiepoint;

 droppoint = svs.time - 1000 * sv_timeout->integer;
 zombiepoint = svs.time - 1000 * sv_zombietime->integer;

 for (i=0,cl=svs.clients ; i < sv_maxclients->integer ; i++,cl++) {

  if (cl->lastPacketTime > svs.time) {
   cl->lastPacketTime = svs.time;
  }

  if (cl->state == CS_ZOMBIE
  && cl->lastPacketTime < zombiepoint) {

   Com_DPrintf( "Going from CS_ZOMBIE to CS_FREE for client %d\n", i );
   cl->state = CS_FREE;
   continue;
  }
  if ( cl->state >= CS_CONNECTED && cl->lastPacketTime < droppoint) {


   if ( ++cl->timeoutCount > 5 ) {
    SV_DropClient (cl, "timed out");
    cl->state = CS_FREE;
   }
  } else {
   cl->timeoutCount = 0;
  }
 }
}
