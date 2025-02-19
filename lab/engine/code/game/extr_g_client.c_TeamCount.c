
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ team_t ;
struct TYPE_8__ {int maxclients; TYPE_3__* clients; } ;
struct TYPE_6__ {scalar_t__ sessionTeam; } ;
struct TYPE_5__ {scalar_t__ connected; } ;
struct TYPE_7__ {TYPE_2__ sess; TYPE_1__ pers; } ;


 scalar_t__ CON_DISCONNECTED ;
 TYPE_4__ level ;

int TeamCount( int ignoreClientNum, team_t team ) {
 int i;
 int count = 0;

 for ( i = 0 ; i < level.maxclients ; i++ ) {
  if ( i == ignoreClientNum ) {
   continue;
  }
  if ( level.clients[i].pers.connected == CON_DISCONNECTED ) {
   continue;
  }
  if ( level.clients[i].sess.sessionTeam == team ) {
   count++;
  }
 }

 return count;
}
