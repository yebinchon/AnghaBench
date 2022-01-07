
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ numSpawnVarChars; char* spawnVarChars; } ;


 int G_Error (char*) ;
 scalar_t__ MAX_SPAWN_VARS_CHARS ;
 TYPE_1__ level ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

char *G_AddSpawnVarToken( const char *string ) {
 int l;
 char *dest;

 l = strlen( string );
 if ( level.numSpawnVarChars + l + 1 > MAX_SPAWN_VARS_CHARS ) {
  G_Error( "G_AddSpawnVarToken: MAX_SPAWN_VARS_CHARS" );
 }

 dest = level.spawnVarChars + level.numSpawnVarChars;
 memcpy( dest, string, l+1 );

 level.numSpawnVarChars += l + 1;

 return dest;
}
