
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int blueTeam; int redTeam; int mapname; void* maxclients; void* timelimit; void* capturelimit; void* fraglimit; void* teamflags; void* dmflags; void* gametype; } ;


 char* CG_ConfigString (int ) ;
 int CS_SERVERINFO ;
 int Com_sprintf (int ,int,char*,char*) ;
 char* Info_ValueForKey (char const*,char*) ;
 int Q_strncpyz (int ,char*,int) ;
 void* atoi (char*) ;
 TYPE_1__ cgs ;
 int trap_Cvar_Set (char*,int ) ;
 int va (char*,void*) ;

void CG_ParseServerinfo( void ) {
 const char *info;
 char *mapname;

 info = CG_ConfigString( CS_SERVERINFO );
 cgs.gametype = atoi( Info_ValueForKey( info, "g_gametype" ) );
 trap_Cvar_Set("g_gametype", va("%i", cgs.gametype));
 cgs.dmflags = atoi( Info_ValueForKey( info, "dmflags" ) );
 cgs.teamflags = atoi( Info_ValueForKey( info, "teamflags" ) );
 cgs.fraglimit = atoi( Info_ValueForKey( info, "fraglimit" ) );
 cgs.capturelimit = atoi( Info_ValueForKey( info, "capturelimit" ) );
 cgs.timelimit = atoi( Info_ValueForKey( info, "timelimit" ) );
 cgs.maxclients = atoi( Info_ValueForKey( info, "sv_maxclients" ) );
 mapname = Info_ValueForKey( info, "mapname" );
 Com_sprintf( cgs.mapname, sizeof( cgs.mapname ), "maps/%s.bsp", mapname );
 Q_strncpyz( cgs.redTeam, Info_ValueForKey( info, "g_redTeam" ), sizeof(cgs.redTeam) );
 trap_Cvar_Set("g_redTeam", cgs.redTeam);
 Q_strncpyz( cgs.blueTeam, Info_ValueForKey( info, "g_blueTeam" ), sizeof(cgs.blueTeam) );
 trap_Cvar_Set("g_blueTeam", cgs.blueTeam);
}
