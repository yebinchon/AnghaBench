
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int team; } ;
typedef TYPE_1__ clientInfo_t ;
struct TYPE_5__ {scalar_t__ gametype; } ;


 scalar_t__ CG_FileExists (char*) ;
 int Com_sprintf (char*,int,char*,char*,char const*,char const*,char const*,char const*,...) ;
 scalar_t__ GT_TEAM ;

 TYPE_2__ cgs ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean CG_FindClientHeadFile( char *filename, int length, clientInfo_t *ci, const char *teamName, const char *headModelName, const char *headSkinName, const char *base, const char *ext ) {
 char *team, *headsFolder;
 int i;

 if ( cgs.gametype >= GT_TEAM ) {
  switch ( ci->team ) {
   case 128: {
    team = "blue";
    break;
   }
   default: {
    team = "red";
    break;
   }
  }
 }
 else {
  team = "default";
 }

 if ( headModelName[0] == '*' ) {
  headsFolder = "heads/";
  headModelName++;
 }
 else {
  headsFolder = "";
 }
 while(1) {
  for ( i = 0; i < 2; i++ ) {
   if ( i == 0 && teamName && *teamName ) {
    Com_sprintf( filename, length, "models/players/%s%s/%s/%s%s_%s.%s", headsFolder, headModelName, headSkinName, teamName, base, team, ext );
   }
   else {
    Com_sprintf( filename, length, "models/players/%s%s/%s/%s_%s.%s", headsFolder, headModelName, headSkinName, base, team, ext );
   }
   if ( CG_FileExists( filename ) ) {
    return qtrue;
   }
   if ( cgs.gametype >= GT_TEAM ) {
    if ( i == 0 && teamName && *teamName ) {
     Com_sprintf( filename, length, "models/players/%s%s/%s%s_%s.%s", headsFolder, headModelName, teamName, base, team, ext );
    }
    else {
     Com_sprintf( filename, length, "models/players/%s%s/%s_%s.%s", headsFolder, headModelName, base, team, ext );
    }
   }
   else {
    if ( i == 0 && teamName && *teamName ) {
     Com_sprintf( filename, length, "models/players/%s%s/%s%s_%s.%s", headsFolder, headModelName, teamName, base, headSkinName, ext );
    }
    else {
     Com_sprintf( filename, length, "models/players/%s%s/%s_%s.%s", headsFolder, headModelName, base, headSkinName, ext );
    }
   }
   if ( CG_FileExists( filename ) ) {
    return qtrue;
   }
   if ( !teamName || !*teamName ) {
    break;
   }
  }

  if ( headsFolder[0] ) {
   break;
  }
  headsFolder = "heads/";
 }

 return qfalse;
}
