
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* shaderPath; } ;


 int SYS_VRB ;
 int StripExtension (char*) ;
 int Sys_FPrintf (int ,char*,char*) ;
 TYPE_1__* game ;
 char* mapName ;
 char* mapShaderFile ;
 int qfalse ;
 int remove (char*) ;
 int sprintf (char*,char*,char*,char*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char*) ;
 int warnImage ;

void BeginMapShaderFile( const char *mapFile ){
 char base[ 1024 ];
 int len;



 mapName[ 0 ] = '\0';
 mapShaderFile[ 0 ] = '\0';
 if ( mapFile == ((void*)0) || mapFile[ 0 ] == '\0' ) {
  return;
 }


 strcpy( base, mapFile );
 StripExtension( base );


 len = strlen( base ) - 1;
 while ( len > 0 && base[ len ] != '/' && base[ len ] != '\\' )
  len--;
 strcpy( mapName, &base[ len + 1 ] );
 base[ len ] = '\0';
 if ( len <= 0 ) {
  return;
 }


 sprintf( mapShaderFile, "%s/../%s/q3map2_%s.shader", base, game->shaderPath, mapName );
 Sys_FPrintf( SYS_VRB, "Map has shader script %s\n", mapShaderFile );


 remove( mapShaderFile );


 warnImage = qfalse;
}
