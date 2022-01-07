
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sessionTeam; scalar_t__ spectatorNum; } ;
struct TYPE_6__ {scalar_t__ connected; } ;
struct TYPE_8__ {TYPE_2__ sess; TYPE_1__ pers; } ;
typedef TYPE_3__ gclient_t ;
struct TYPE_9__ {int maxclients; TYPE_3__* clients; } ;


 scalar_t__ CON_DISCONNECTED ;
 scalar_t__ TEAM_SPECTATOR ;
 TYPE_4__ level ;

void AddTournamentQueue(gclient_t *client)
{
 int index;
 gclient_t *curclient;

 for(index = 0; index < level.maxclients; index++)
 {
  curclient = &level.clients[index];

  if(curclient->pers.connected != CON_DISCONNECTED)
  {
   if(curclient == client)
    curclient->sess.spectatorNum = 0;
   else if(curclient->sess.sessionTeam == TEAM_SPECTATOR)
    curclient->sess.spectatorNum++;
  }
 }
}
