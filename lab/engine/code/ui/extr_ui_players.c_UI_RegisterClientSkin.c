
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {void* headSkin; void* torsoSkin; void* legsSkin; } ;
typedef TYPE_1__ playerInfo_t ;
typedef int filename ;


 int Com_sprintf (char*,int,char*,char const*,char const*,...) ;
 int MAX_QPATH ;
 scalar_t__ UI_FindClientHeadFile (char*,int,char const*,char const*,char const*,char*,char*) ;
 int qfalse ;
 int qtrue ;
 void* trap_R_RegisterSkin (char*) ;

__attribute__((used)) static qboolean UI_RegisterClientSkin( playerInfo_t *pi, const char *modelName, const char *skinName, const char *headModelName, const char *headSkinName , const char *teamName) {
 char filename[MAX_QPATH];

 if (teamName && *teamName) {
  Com_sprintf( filename, sizeof( filename ), "models/players/%s/%s/lower_%s.skin", modelName, teamName, skinName );
 } else {
  Com_sprintf( filename, sizeof( filename ), "models/players/%s/lower_%s.skin", modelName, skinName );
 }
 pi->legsSkin = trap_R_RegisterSkin( filename );
 if (!pi->legsSkin) {
  if (teamName && *teamName) {
   Com_sprintf( filename, sizeof( filename ), "models/players/characters/%s/%s/lower_%s.skin", modelName, teamName, skinName );
  } else {
   Com_sprintf( filename, sizeof( filename ), "models/players/characters/%s/lower_%s.skin", modelName, skinName );
  }
  pi->legsSkin = trap_R_RegisterSkin( filename );
 }

 if (teamName && *teamName) {
  Com_sprintf( filename, sizeof( filename ), "models/players/%s/%s/upper_%s.skin", modelName, teamName, skinName );
 } else {
  Com_sprintf( filename, sizeof( filename ), "models/players/%s/upper_%s.skin", modelName, skinName );
 }
 pi->torsoSkin = trap_R_RegisterSkin( filename );
 if (!pi->torsoSkin) {
  if (teamName && *teamName) {
   Com_sprintf( filename, sizeof( filename ), "models/players/characters/%s/%s/upper_%s.skin", modelName, teamName, skinName );
  } else {
   Com_sprintf( filename, sizeof( filename ), "models/players/characters/%s/upper_%s.skin", modelName, skinName );
  }
  pi->torsoSkin = trap_R_RegisterSkin( filename );
 }

 if ( UI_FindClientHeadFile( filename, sizeof(filename), teamName, headModelName, headSkinName, "head", "skin" ) ) {
  pi->headSkin = trap_R_RegisterSkin( filename );
 }

 if ( !pi->legsSkin || !pi->torsoSkin || !pi->headSkin ) {
  return qfalse;
 }

 return qtrue;
}
