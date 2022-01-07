
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int client_t ;
struct TYPE_8__ {scalar_t__ integer; } ;
struct TYPE_7__ {scalar_t__ integer; } ;
struct TYPE_6__ {int integer; } ;
struct TYPE_5__ {int numSnapshotEntities; scalar_t__ initialized; int clients; } ;


 int Com_Error (int ,char*) ;
 int Cvar_Set (char*,char*) ;
 int ERR_FATAL ;
 int MAX_SNAPSHOT_ENTITIES ;
 int NET_JoinMulticast6 () ;
 int PACKET_BACKUP ;
 int SV_BoundMaxClients (int) ;
 int Z_Malloc (int) ;
 TYPE_4__* com_dedicated ;
 scalar_t__ qtrue ;
 TYPE_3__* sv_killserver ;
 TYPE_2__* sv_maxclients ;
 TYPE_1__ svs ;

__attribute__((used)) static void SV_Startup( void ) {
 if ( svs.initialized ) {
  Com_Error( ERR_FATAL, "SV_Startup: svs.initialized" );
 }
 SV_BoundMaxClients( 1 );

 svs.clients = Z_Malloc (sizeof(client_t) * sv_maxclients->integer );
 if ( com_dedicated->integer ) {
  svs.numSnapshotEntities = sv_maxclients->integer * PACKET_BACKUP * MAX_SNAPSHOT_ENTITIES;
 } else {

  svs.numSnapshotEntities = sv_maxclients->integer * 4 * MAX_SNAPSHOT_ENTITIES;
 }
 svs.initialized = qtrue;


 if ( sv_killserver->integer ) {
  Cvar_Set( "sv_killserver", "0" );
 }

 Cvar_Set( "sv_running", "1" );


 NET_JoinMulticast6();
}
