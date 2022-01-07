
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_4__ {scalar_t__ integer; } ;
struct TYPE_3__ {int integer; } ;


 int Cmd_AddCommand (char*,int ) ;
 int Cmd_SetCommandCompletionFunc (char*,int ) ;
 int SV_BanAddr_f ;
 int SV_BanDel_f ;
 int SV_BanNum_f ;
 int SV_Ban_f ;
 int SV_CompleteMapName ;
 int SV_CompletePlayerName ;
 int SV_ConSay_f ;
 int SV_ConSayto_f ;
 int SV_ConTell_f ;
 int SV_DumpUser_f ;
 int SV_ExceptAddr_f ;
 int SV_ExceptDel_f ;
 int SV_FlushBans_f ;
 int SV_Heartbeat_f ;
 int SV_KickAll_f ;
 int SV_KickBots_f ;
 int SV_KickNum_f ;
 int SV_Kick_f ;
 int SV_KillServer_f ;
 int SV_ListBans_f ;
 int SV_MapRestart_f ;
 int SV_Map_f ;
 int SV_RehashBans_f ;
 int SV_SectorList_f ;
 int SV_Serverinfo_f ;
 int SV_Status_f ;
 int SV_Systeminfo_f ;
 TYPE_2__* com_dedicated ;
 TYPE_1__* com_standalone ;
 scalar_t__ qtrue ;

void SV_AddOperatorCommands( void ) {
 static qboolean initialized;

 if ( initialized ) {
  return;
 }
 initialized = qtrue;

 Cmd_AddCommand ("heartbeat", SV_Heartbeat_f);
 Cmd_AddCommand ("kick", SV_Kick_f);

 if(!com_standalone->integer)
 {
  Cmd_AddCommand ("banUser", SV_Ban_f);
  Cmd_AddCommand ("banClient", SV_BanNum_f);
 }

 Cmd_AddCommand ("kickbots", SV_KickBots_f);
 Cmd_AddCommand ("kickall", SV_KickAll_f);
 Cmd_AddCommand ("kicknum", SV_KickNum_f);
 Cmd_AddCommand ("clientkick", SV_KickNum_f);
 Cmd_AddCommand ("status", SV_Status_f);
 Cmd_AddCommand ("serverinfo", SV_Serverinfo_f);
 Cmd_AddCommand ("systeminfo", SV_Systeminfo_f);
 Cmd_AddCommand ("dumpuser", SV_DumpUser_f);
 Cmd_AddCommand ("map_restart", SV_MapRestart_f);
 Cmd_AddCommand ("sectorlist", SV_SectorList_f);
 Cmd_AddCommand ("map", SV_Map_f);
 Cmd_SetCommandCompletionFunc( "map", SV_CompleteMapName );

 Cmd_AddCommand ("devmap", SV_Map_f);
 Cmd_SetCommandCompletionFunc( "devmap", SV_CompleteMapName );
 Cmd_AddCommand ("spmap", SV_Map_f);
 Cmd_SetCommandCompletionFunc( "spmap", SV_CompleteMapName );
 Cmd_AddCommand ("spdevmap", SV_Map_f);
 Cmd_SetCommandCompletionFunc( "spdevmap", SV_CompleteMapName );

 Cmd_AddCommand ("killserver", SV_KillServer_f);
 if( com_dedicated->integer ) {
  Cmd_AddCommand ("say", SV_ConSay_f);
  Cmd_AddCommand ("tell", SV_ConTell_f);
  Cmd_AddCommand ("sayto", SV_ConSayto_f);
  Cmd_SetCommandCompletionFunc( "sayto", SV_CompletePlayerName );
 }

 Cmd_AddCommand("rehashbans", SV_RehashBans_f);
 Cmd_AddCommand("listbans", SV_ListBans_f);
 Cmd_AddCommand("banaddr", SV_BanAddr_f);
 Cmd_AddCommand("exceptaddr", SV_ExceptAddr_f);
 Cmd_AddCommand("bandel", SV_BanDel_f);
 Cmd_AddCommand("exceptdel", SV_ExceptDel_f);
 Cmd_AddCommand("flushbans", SV_FlushBans_f);
}
