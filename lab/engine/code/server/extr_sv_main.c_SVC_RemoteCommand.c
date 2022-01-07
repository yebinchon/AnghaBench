
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int remaining ;
typedef int qboolean ;
typedef int netadr_t ;
typedef int msg_t ;
typedef int leakyBucket_t ;
struct TYPE_4__ {int string; } ;
struct TYPE_3__ {int redirectAddress; } ;


 int Cmd_ArgsFrom (int) ;
 int Cmd_Argv (int) ;
 char* Cmd_Cmd () ;
 int Cmd_ExecuteString (char*) ;
 int Com_BeginRedirect (char*,int,int ) ;
 int Com_DPrintf (char*,...) ;
 int Com_EndRedirect () ;
 int Com_Printf (char*,...) ;
 int NET_AdrToString (int ) ;
 int Q_strcat (char*,int,char*) ;
 scalar_t__ SVC_RateLimit (int *,int,int) ;
 scalar_t__ SVC_RateLimitAddress (int ,int,int) ;
 int SV_FlushRedirect ;
 int SV_OUTPUTBUF_LENGTH ;
 int qfalse ;
 int qtrue ;
 scalar_t__ strcmp (int ,int ) ;
 int strlen (int ) ;
 TYPE_2__* sv_rconPassword ;
 TYPE_1__ svs ;

__attribute__((used)) static void SVC_RemoteCommand( netadr_t from, msg_t *msg ) {
 qboolean valid;
 char remaining[1024];



 char sv_outputbuf[(1024 - 16)];
 char *cmd_aux;


 if ( SVC_RateLimitAddress( from, 10, 1000 ) ) {
  Com_DPrintf( "SVC_RemoteCommand: rate limit from %s exceeded, dropping request\n",
   NET_AdrToString( from ) );
  return;
 }

 if ( !strlen( sv_rconPassword->string ) ||
  strcmp (Cmd_Argv(1), sv_rconPassword->string) ) {
  static leakyBucket_t bucket;


  if ( SVC_RateLimit( &bucket, 10, 1000 ) ) {
   Com_DPrintf( "SVC_RemoteCommand: rate limit exceeded, dropping request\n" );
   return;
  }

  valid = qfalse;
  Com_Printf ("Bad rcon from %s: %s\n", NET_AdrToString (from), Cmd_ArgsFrom(2) );
 } else {
  valid = qtrue;
  Com_Printf ("Rcon from %s: %s\n", NET_AdrToString (from), Cmd_ArgsFrom(2) );
 }


 svs.redirectAddress = from;
 Com_BeginRedirect (sv_outputbuf, (1024 - 16), SV_FlushRedirect);

 if ( !strlen( sv_rconPassword->string ) ) {
  Com_Printf ("No rconpassword set on the server.\n");
 } else if ( !valid ) {
  Com_Printf ("Bad rconpassword.\n");
 } else {
  remaining[0] = 0;





  cmd_aux = Cmd_Cmd();
  cmd_aux+=4;
  while(cmd_aux[0]==' ')
   cmd_aux++;
  while(cmd_aux[0] && cmd_aux[0]!=' ')
   cmd_aux++;
  while(cmd_aux[0]==' ')
   cmd_aux++;

  Q_strcat( remaining, sizeof(remaining), cmd_aux);

  Cmd_ExecuteString (remaining);

 }

 Com_EndRedirect ();
}
