
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int qboolean ;
typedef int msg_t ;
struct TYPE_8__ {int lastClientCommand; scalar_t__ state; scalar_t__ nextReliableTime; int lastClientCommandString; int name; } ;
typedef TYPE_1__ client_t ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_9__ {scalar_t__ time; } ;


 scalar_t__ CS_ACTIVE ;
 int Com_DPrintf (char*,int ,int,char const*) ;
 int Com_Printf (char*,int ,int) ;
 int Com_sprintf (int ,int,char*,char const*) ;
 int MSG_ReadLong (int *) ;
 char* MSG_ReadString (int *) ;
 int SV_DropClient (TYPE_1__*,char*) ;
 int SV_ExecuteClientCommand (TYPE_1__*,char const*,int ) ;
 TYPE_4__* com_cl_running ;
 int qfalse ;
 int qtrue ;
 TYPE_3__* sv_floodProtect ;
 TYPE_2__ svs ;

__attribute__((used)) static qboolean SV_ClientCommand( client_t *cl, msg_t *msg ) {
 int seq;
 const char *s;
 qboolean clientOk = qtrue;

 seq = MSG_ReadLong( msg );
 s = MSG_ReadString( msg );


 if ( cl->lastClientCommand >= seq ) {
  return qtrue;
 }

 Com_DPrintf( "clientCommand: %s : %i : %s\n", cl->name, seq, s );


 if ( seq > cl->lastClientCommand + 1 ) {
  Com_Printf( "Client %s lost %i clientCommands\n", cl->name,
   seq - cl->lastClientCommand + 1 );
  SV_DropClient( cl, "Lost reliable commands" );
  return qfalse;
 }
 if ( !com_cl_running->integer &&
  cl->state >= CS_ACTIVE &&
  sv_floodProtect->integer &&
  svs.time < cl->nextReliableTime ) {


  clientOk = qfalse;
 }


 cl->nextReliableTime = svs.time + 1000;

 SV_ExecuteClientCommand( cl, s, clientOk );

 cl->lastClientCommand = seq;
 Com_sprintf(cl->lastClientCommandString, sizeof(cl->lastClientCommandString), "%s", s);

 return qtrue;
}
