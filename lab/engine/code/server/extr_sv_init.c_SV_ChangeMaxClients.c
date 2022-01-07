
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ state; } ;
typedef TYPE_1__ client_t ;
struct TYPE_13__ {scalar_t__ integer; } ;
struct TYPE_12__ {int integer; } ;
struct TYPE_11__ {int numSnapshotEntities; TYPE_1__* clients; } ;


 scalar_t__ CS_CONNECTED ;
 int Com_Memset (TYPE_1__*,int ,int) ;
 TYPE_1__* Hunk_AllocateTempMemory (int) ;
 int Hunk_FreeTempMemory (TYPE_1__*) ;
 int MAX_SNAPSHOT_ENTITIES ;
 int PACKET_BACKUP ;
 int SV_BoundMaxClients (int) ;
 int Z_Free (TYPE_1__*) ;
 TYPE_1__* Z_Malloc (int) ;
 TYPE_4__* com_dedicated ;
 TYPE_3__* sv_maxclients ;
 TYPE_2__ svs ;

void SV_ChangeMaxClients( void ) {
 int oldMaxClients;
 int i;
 client_t *oldClients;
 int count;


 count = 0;
 for ( i = 0 ; i < sv_maxclients->integer ; i++ ) {
  if ( svs.clients[i].state >= CS_CONNECTED ) {
   if (i > count)
    count = i;
  }
 }
 count++;

 oldMaxClients = sv_maxclients->integer;

 SV_BoundMaxClients( count );

 if ( sv_maxclients->integer == oldMaxClients ) {
  return;
 }

 oldClients = Hunk_AllocateTempMemory( count * sizeof(client_t) );

 for ( i = 0 ; i < count ; i++ ) {
  if ( svs.clients[i].state >= CS_CONNECTED ) {
   oldClients[i] = svs.clients[i];
  }
  else {
   Com_Memset(&oldClients[i], 0, sizeof(client_t));
  }
 }


 Z_Free( svs.clients );


 svs.clients = Z_Malloc ( sv_maxclients->integer * sizeof(client_t) );
 Com_Memset( svs.clients, 0, sv_maxclients->integer * sizeof(client_t) );


 for ( i = 0 ; i < count ; i++ ) {
  if ( oldClients[i].state >= CS_CONNECTED ) {
   svs.clients[i] = oldClients[i];
  }
 }


 Hunk_FreeTempMemory( oldClients );


 if ( com_dedicated->integer ) {
  svs.numSnapshotEntities = sv_maxclients->integer * PACKET_BACKUP * MAX_SNAPSHOT_ENTITIES;
 } else {

  svs.numSnapshotEntities = sv_maxclients->integer * 4 * MAX_SNAPSHOT_ENTITIES;
 }
}
