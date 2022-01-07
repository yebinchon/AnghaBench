
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int numSpawnVars; char*** spawnVars; int spawning; } ;


 int Q_stricmp (char const*,char*) ;
 TYPE_1__ level ;
 int qfalse ;
 int qtrue ;

qboolean G_SpawnString( const char *key, const char *defaultString, char **out ) {
 int i;

 if ( !level.spawning ) {
  *out = (char *)defaultString;

 }

 for ( i = 0 ; i < level.numSpawnVars ; i++ ) {
  if ( !Q_stricmp( key, level.spawnVars[i][0] ) ) {
   *out = level.spawnVars[i][1];
   return qtrue;
  }
 }

 *out = (char *)defaultString;
 return qfalse;
}
