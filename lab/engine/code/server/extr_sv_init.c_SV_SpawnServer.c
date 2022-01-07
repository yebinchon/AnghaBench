
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int systemInfo ;
struct TYPE_18__ {int number; } ;
struct TYPE_19__ {TYPE_3__ s; } ;
typedef TYPE_4__ sharedEntity_t ;
typedef void* qboolean ;
typedef int entityState_t ;
struct TYPE_16__ {scalar_t__ type; } ;
struct TYPE_17__ {TYPE_1__ remoteAddress; } ;
struct TYPE_20__ {scalar_t__ state; int oldServerTime; int deltaMessage; scalar_t__ lastSnapshotTime; TYPE_4__* gentity; TYPE_2__ netchan; } ;
typedef TYPE_5__ client_t ;
struct TYPE_24__ {void* modified; } ;
struct TYPE_23__ {int integer; scalar_t__ modified; } ;
struct TYPE_22__ {scalar_t__ integer; } ;
struct TYPE_21__ {int numSnapshotEntities; int time; TYPE_5__* clients; int snapFlagServerBit; scalar_t__ nextSnapshotEntities; int snapshotEntities; } ;
struct TYPE_15__ {scalar_t__ integer; } ;
struct TYPE_14__ {int time; unsigned int checksumFeed; int serverId; int restartedServerId; int checksumFeedServerId; int state; int * configstrings; } ;


 int CL_MapLoading () ;
 int CL_ShutdownAll (void*) ;
 int CL_StartHunkUsers (void*) ;
 int CM_ClearMap () ;
 int CM_LoadMap (char const*,void*,int*) ;
 scalar_t__ CS_ACTIVE ;
 scalar_t__ CS_CONNECTED ;
 int CS_SERVERINFO ;
 int CS_SYSTEMINFO ;
 int CVAR_SERVERINFO ;
 int CVAR_SYSTEMINFO ;
 unsigned int Com_Milliseconds () ;
 int Com_Printf (char*,...) ;
 int CopyString (char*) ;
 char* Cvar_InfoString (int ) ;
 int Cvar_InfoString_Big (int ) ;
 int Cvar_Set (char*,char const*) ;
 int Cvar_VariableValue (char*) ;
 int FS_ClearPakReferences (int ) ;
 char* FS_LoadedPakChecksums () ;
 char* FS_LoadedPakNames () ;
 char* FS_ReferencedPakChecksums () ;
 char* FS_ReferencedPakNames () ;
 int FS_Restart (unsigned int) ;
 int GAME_CLIENT_BEGIN ;
 int GAME_CLIENT_CONNECT ;
 int GAME_RUN_FRAME ;
 int Hunk_Alloc (int,int ) ;
 int Hunk_Clear () ;
 int Hunk_SetMark () ;
 int MAX_CONFIGSTRINGS ;
 scalar_t__ NA_BOT ;
 int Q_strncpyz (char*,int ,int) ;
 int SNAPFLAG_SERVERCOUNT ;
 int SS_GAME ;
 int SS_LOADING ;
 int SV_BotFrame (int) ;
 int SV_ChangeMaxClients () ;
 int SV_ClearServer () ;
 int SV_ClearWorld () ;
 int SV_CreateBaseline () ;
 int SV_DropClient (TYPE_5__*,char*) ;
 TYPE_4__* SV_GentityNum (int) ;
 int SV_Heartbeat_f () ;
 int SV_InitGameProgs () ;
 int SV_SetConfigstring (int ,char*) ;
 int SV_ShutdownGameProgs () ;
 int SV_Startup () ;
 int SV_TouchFile (char*) ;
 int VM_Call (int ,int ,int,...) ;
 char* VM_ExplicitArgPtr (int ,int ) ;
 TYPE_11__* com_dedicated ;
 int com_frameTime ;
 int cvar_modifiedFlags ;
 int gvm ;
 int h_high ;
 void* qfalse ;
 void* qtrue ;
 scalar_t__ rand () ;
 scalar_t__ strlen (char const*) ;
 TYPE_10__ sv ;
 TYPE_9__* sv_gametype ;
 TYPE_8__* sv_maxclients ;
 TYPE_7__* sv_pure ;
 TYPE_6__ svs ;
 char const* va (char*,...) ;

void SV_SpawnServer( char *server, qboolean killBots ) {
 int i;
 int checksum;
 qboolean isBot;
 char systemInfo[16384];
 const char *p;


 SV_ShutdownGameProgs();

 Com_Printf ("------ Server Initialization ------\n");
 Com_Printf ("Server: %s\n",server);



 CL_MapLoading();


 CL_ShutdownAll(qfalse);


 Hunk_Clear();


 CM_ClearMap();


 if ( !Cvar_VariableValue("sv_running") ) {
  SV_Startup();
 } else {

  if ( sv_maxclients->modified ) {
   SV_ChangeMaxClients();
  }
 }


 FS_ClearPakReferences(0);


 svs.snapshotEntities = Hunk_Alloc( sizeof(entityState_t)*svs.numSnapshotEntities, h_high );
 svs.nextSnapshotEntities = 0;



 svs.snapFlagServerBit ^= SNAPFLAG_SERVERCOUNT;



 Cvar_Set( "nextmap", "map_restart 0");


 for (i=0 ; i<sv_maxclients->integer ; i++) {

  if (svs.clients[i].state >= CS_CONNECTED) {
   svs.clients[i].oldServerTime = sv.time;
  }
 }


 SV_ClearServer();
 for ( i = 0 ; i < MAX_CONFIGSTRINGS ; i++ ) {
  sv.configstrings[i] = CopyString("");
 }


 Cvar_Set("cl_paused", "0");


 sv.checksumFeed = ( ((unsigned int)rand() << 16) ^ (unsigned int)rand() ) ^ Com_Milliseconds();
 FS_Restart( sv.checksumFeed );

 CM_LoadMap( va("maps/%s.bsp", server), qfalse, &checksum );


 Cvar_Set( "mapname", server );

 Cvar_Set( "sv_mapChecksum", va("%i",checksum) );


 sv.serverId = com_frameTime;
 sv.restartedServerId = sv.serverId;
 sv.checksumFeedServerId = sv.serverId;
 Cvar_Set( "sv_serverid", va("%i", sv.serverId ) );


 SV_ClearWorld ();




 sv.state = SS_LOADING;


 SV_InitGameProgs();


 sv_gametype->modified = qfalse;


 for (i = 0;i < 3; i++)
 {
  VM_Call (gvm, GAME_RUN_FRAME, sv.time);
  SV_BotFrame (sv.time);
  sv.time += 100;
  svs.time += 100;
 }


 SV_CreateBaseline ();

 for (i=0 ; i<sv_maxclients->integer ; i++) {

  if (svs.clients[i].state >= CS_CONNECTED) {
   char *denied;

   if ( svs.clients[i].netchan.remoteAddress.type == NA_BOT ) {
    if ( killBots ) {
     SV_DropClient( &svs.clients[i], "" );
     continue;
    }
    isBot = qtrue;
   }
   else {
    isBot = qfalse;
   }


   denied = VM_ExplicitArgPtr( gvm, VM_Call( gvm, GAME_CLIENT_CONNECT, i, qfalse, isBot ) );
   if ( denied ) {


    SV_DropClient( &svs.clients[i], denied );
   } else {
    if( !isBot ) {


     svs.clients[i].state = CS_CONNECTED;
    }
    else {
     client_t *client;
     sharedEntity_t *ent;

     client = &svs.clients[i];
     client->state = CS_ACTIVE;
     ent = SV_GentityNum( i );
     ent->s.number = i;
     client->gentity = ent;

     client->deltaMessage = -1;
     client->lastSnapshotTime = 0;

     VM_Call( gvm, GAME_CLIENT_BEGIN, i );
    }
   }
  }
 }


 VM_Call (gvm, GAME_RUN_FRAME, sv.time);
 SV_BotFrame (sv.time);
 sv.time += 100;
 svs.time += 100;

 if ( sv_pure->integer ) {


  p = FS_LoadedPakChecksums();
  Cvar_Set( "sv_paks", p );
  if (strlen(p) == 0) {
   Com_Printf( "WARNING: sv_pure set but no PK3 files loaded\n" );
  }
  p = FS_LoadedPakNames();
  Cvar_Set( "sv_pakNames", p );




  SV_TouchFile( "vm/cgame.qvm" );
  SV_TouchFile( "vm/ui.qvm" );
 }
 else {
  Cvar_Set( "sv_paks", "" );
  Cvar_Set( "sv_pakNames", "" );
 }


 p = FS_ReferencedPakChecksums();
 Cvar_Set( "sv_referencedPaks", p );
 p = FS_ReferencedPakNames();
 Cvar_Set( "sv_referencedPakNames", p );


 Q_strncpyz( systemInfo, Cvar_InfoString_Big( CVAR_SYSTEMINFO ), sizeof( systemInfo ) );
 cvar_modifiedFlags &= ~CVAR_SYSTEMINFO;
 SV_SetConfigstring( CS_SYSTEMINFO, systemInfo );

 SV_SetConfigstring( CS_SERVERINFO, Cvar_InfoString( CVAR_SERVERINFO ) );
 cvar_modifiedFlags &= ~CVAR_SERVERINFO;




 sv.state = SS_GAME;


 SV_Heartbeat_f();

 Hunk_SetMark();


 if ( com_dedicated->integer ) {


  CL_StartHunkUsers( qtrue );
 }


 Com_Printf ("-----------------------------------\n");
}
