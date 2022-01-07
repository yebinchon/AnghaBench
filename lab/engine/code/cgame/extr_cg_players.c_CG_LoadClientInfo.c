
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int teamname ;
typedef int orientation_t ;
struct TYPE_12__ {scalar_t__ team; char* modelName; char* skinName; char* headModelName; char* headSkinName; void* deferred; void** sounds; void* newAnims; scalar_t__ torsoModel; } ;
typedef TYPE_2__ clientInfo_t ;
struct TYPE_17__ {int string; } ;
struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_11__ {int clientNum; scalar_t__ eType; } ;
struct TYPE_15__ {TYPE_1__ currentState; } ;
struct TYPE_14__ {int string; } ;
struct TYPE_13__ {scalar_t__ gametype; } ;


 int CG_Error (char*,char*,...) ;
 int CG_RegisterClientModelname (TYPE_2__*,char*,char*,char*,char*,char*) ;
 int CG_ResetPlayerEntity (TYPE_5__*) ;
 int DEFAULT_BLUETEAM_NAME ;
 char* DEFAULT_MODEL ;
 int DEFAULT_REDTEAM_NAME ;
 char* DEFAULT_TEAM_HEAD ;
 char* DEFAULT_TEAM_MODEL ;
 scalar_t__ ET_PLAYER ;
 scalar_t__ GT_TEAM ;
 int MAX_CUSTOM_SOUNDS ;
 int MAX_GENTITIES ;
 int MAX_QPATH ;
 int Q_strncpyz (char*,int ,int) ;
 scalar_t__ TEAM_BLUE ;
 TYPE_7__ cg_blueTeamName ;
 TYPE_6__ cg_buildScript ;
 char** cg_customSoundNames ;
 TYPE_5__* cg_entities ;
 TYPE_4__ cg_redTeamName ;
 TYPE_3__ cgs ;
 void* qfalse ;
 void* qtrue ;
 int strcat (char*,char*) ;
 scalar_t__ trap_R_LerpTag (int *,scalar_t__,int ,int ,int,char*) ;
 void* trap_S_RegisterSound (int ,void*) ;
 int va (char*,char const*,char const*) ;

__attribute__((used)) static void CG_LoadClientInfo( int clientNum, clientInfo_t *ci ) {
 const char *dir, *fallback;
 int i, modelloaded;
 const char *s;
 char teamname[MAX_QPATH];

 teamname[0] = 0;
 modelloaded = qtrue;
 if ( !CG_RegisterClientModelname( ci, ci->modelName, ci->skinName, ci->headModelName, ci->headSkinName, teamname ) ) {
  if ( cg_buildScript.integer ) {
   CG_Error( "CG_RegisterClientModelname( %s, %s, %s, %s %s ) failed", ci->modelName, ci->skinName, ci->headModelName, ci->headSkinName, teamname );
  }


  if( cgs.gametype >= GT_TEAM) {

   if( ci->team == TEAM_BLUE ) {
    Q_strncpyz(teamname, DEFAULT_BLUETEAM_NAME, sizeof(teamname) );
   } else {
    Q_strncpyz(teamname, DEFAULT_REDTEAM_NAME, sizeof(teamname) );
   }
   if ( !CG_RegisterClientModelname( ci, DEFAULT_TEAM_MODEL, ci->skinName, DEFAULT_TEAM_HEAD, ci->skinName, teamname ) ) {
    CG_Error( "DEFAULT_TEAM_MODEL / skin (%s/%s) failed to register", DEFAULT_TEAM_MODEL, ci->skinName );
   }
  } else {
   if ( !CG_RegisterClientModelname( ci, DEFAULT_MODEL, "default", DEFAULT_MODEL, "default", teamname ) ) {
    CG_Error( "DEFAULT_MODEL (%s) failed to register", DEFAULT_MODEL );
   }
  }
  modelloaded = qfalse;
 }

 ci->newAnims = qfalse;
 if ( ci->torsoModel ) {
  orientation_t tag;

  if ( trap_R_LerpTag( &tag, ci->torsoModel, 0, 0, 1, "tag_flag" ) ) {
   ci->newAnims = qtrue;
  }
 }


 dir = ci->modelName;
 fallback = (cgs.gametype >= GT_TEAM) ? DEFAULT_TEAM_MODEL : DEFAULT_MODEL;

 for ( i = 0 ; i < MAX_CUSTOM_SOUNDS ; i++ ) {
  s = cg_customSoundNames[i];
  if ( !s ) {
   break;
  }
  ci->sounds[i] = 0;

  if (modelloaded) {
   ci->sounds[i] = trap_S_RegisterSound( va("sound/player/%s/%s", dir, s + 1), qfalse );
  }
  if ( !ci->sounds[i] ) {
   ci->sounds[i] = trap_S_RegisterSound( va("sound/player/%s/%s", fallback, s + 1), qfalse );
  }
 }

 ci->deferred = qfalse;



 for ( i = 0 ; i < MAX_GENTITIES ; i++ ) {
  if ( cg_entities[i].currentState.clientNum == clientNum
   && cg_entities[i].currentState.eType == ET_PLAYER ) {
   CG_ResetPlayerEntity( &cg_entities[i] );
  }
 }
}
