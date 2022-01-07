
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
typedef int keyname ;
typedef int com_token ;
struct TYPE_2__ {size_t numSpawnVars; void*** spawnVars; scalar_t__ numSpawnVarChars; } ;


 void* G_AddSpawnVarToken (char*) ;
 int G_Error (char*,...) ;
 size_t MAX_SPAWN_VARS ;
 int MAX_TOKEN_CHARS ;
 TYPE_1__ level ;
 int qfalse ;
 int qtrue ;
 int trap_GetEntityToken (char*,int) ;

qboolean G_ParseSpawnVars( void ) {
 char keyname[MAX_TOKEN_CHARS];
 char com_token[MAX_TOKEN_CHARS];

 level.numSpawnVars = 0;
 level.numSpawnVarChars = 0;


 if ( !trap_GetEntityToken( com_token, sizeof( com_token ) ) ) {

  return qfalse;
 }
 if ( com_token[0] != '{' ) {
  G_Error( "G_ParseSpawnVars: found %s when expecting {",com_token );
 }


 while ( 1 ) {

  if ( !trap_GetEntityToken( keyname, sizeof( keyname ) ) ) {
   G_Error( "G_ParseSpawnVars: EOF without closing brace" );
  }

  if ( keyname[0] == '}' ) {
   break;
  }


  if ( !trap_GetEntityToken( com_token, sizeof( com_token ) ) ) {
   G_Error( "G_ParseSpawnVars: EOF without closing brace" );
  }

  if ( com_token[0] == '}' ) {
   G_Error( "G_ParseSpawnVars: closing brace without data" );
  }
  if ( level.numSpawnVars == MAX_SPAWN_VARS ) {
   G_Error( "G_ParseSpawnVars: MAX_SPAWN_VARS" );
  }
  level.spawnVars[ level.numSpawnVars ][0] = G_AddSpawnVarToken( keyname );
  level.spawnVars[ level.numSpawnVars ][1] = G_AddSpawnVarToken( com_token );
  level.numSpawnVars++;
 }

 return qtrue;
}
