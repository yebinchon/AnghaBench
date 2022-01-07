
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int numPlayingClients; int* sortedClients; TYPE_2__* clients; } ;
struct TYPE_4__ {scalar_t__ connected; } ;
struct TYPE_5__ {TYPE_1__ pers; } ;


 scalar_t__ CON_CONNECTED ;
 int SetTeam (int *,char*) ;
 int * g_entities ;
 TYPE_3__ level ;

void RemoveTournamentLoser( void ) {
 int clientNum;

 if ( level.numPlayingClients != 2 ) {
  return;
 }

 clientNum = level.sortedClients[1];

 if ( level.clients[ clientNum ].pers.connected != CON_CONNECTED ) {
  return;
 }


 SetTeam( &g_entities[ clientNum ], "s" );
}
