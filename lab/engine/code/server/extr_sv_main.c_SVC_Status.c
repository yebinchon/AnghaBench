
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int status ;
struct TYPE_6__ {int * persistant; } ;
typedef TYPE_1__ playerState_t ;
typedef int player ;
typedef int netadr_t ;
struct TYPE_7__ {scalar_t__ state; int name; int ping; } ;
typedef TYPE_2__ client_t ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {TYPE_2__* clients; } ;


 scalar_t__ CS_CONNECTED ;
 int CVAR_SERVERINFO ;
 char* Cmd_Argv (int) ;
 int Com_DPrintf (char*,...) ;
 int Com_sprintf (char*,int,char*,int ,int ,int ) ;
 char* Cvar_InfoString (int ) ;
 scalar_t__ Cvar_VariableValue (char*) ;
 scalar_t__ GT_SINGLE_PLAYER ;
 int Info_SetValueForKey (char*,char*,char*) ;
 int MAX_INFO_STRING ;
 int MAX_MSGLEN ;
 int NET_AdrToString (int ) ;
 int NET_OutOfBandPrint (int ,int ,char*,char*,char*) ;
 int NS_SERVER ;
 size_t PERS_SCORE ;
 scalar_t__ SVC_RateLimit (int *,int,int) ;
 scalar_t__ SVC_RateLimitAddress (int ,int,int) ;
 TYPE_1__* SV_GameClientNum (int) ;
 int outboundLeakyBucket ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 TYPE_4__* sv_maxclients ;
 TYPE_3__ svs ;

__attribute__((used)) static void SVC_Status( netadr_t from ) {
 char player[1024];
 char status[MAX_MSGLEN];
 int i;
 client_t *cl;
 playerState_t *ps;
 int statusLength;
 int playerLength;
 char infostring[MAX_INFO_STRING];


 if ( Cvar_VariableValue( "g_gametype" ) == GT_SINGLE_PLAYER || Cvar_VariableValue("ui_singlePlayerActive")) {
  return;
 }


 if ( SVC_RateLimitAddress( from, 10, 1000 ) ) {
  Com_DPrintf( "SVC_Status: rate limit from %s exceeded, dropping request\n",
   NET_AdrToString( from ) );
  return;
 }



 if ( SVC_RateLimit( &outboundLeakyBucket, 10, 100 ) ) {
  Com_DPrintf( "SVC_Status: rate limit exceeded, dropping request\n" );
  return;
 }


 if(strlen(Cmd_Argv(1)) > 128)
  return;

 strcpy( infostring, Cvar_InfoString( CVAR_SERVERINFO ) );



 Info_SetValueForKey( infostring, "challenge", Cmd_Argv(1) );

 status[0] = 0;
 statusLength = 0;

 for (i=0 ; i < sv_maxclients->integer ; i++) {
  cl = &svs.clients[i];
  if ( cl->state >= CS_CONNECTED ) {
   ps = SV_GameClientNum( i );
   Com_sprintf (player, sizeof(player), "%i %i \"%s\"\n",
    ps->persistant[PERS_SCORE], cl->ping, cl->name);
   playerLength = strlen(player);
   if (statusLength + playerLength >= sizeof(status) ) {
    break;
   }
   strcpy (status + statusLength, player);
   statusLength += playerLength;
  }
 }

 NET_OutOfBandPrint( NS_SERVER, from, "statusResponse\n%s\n%s", infostring, status );
}
