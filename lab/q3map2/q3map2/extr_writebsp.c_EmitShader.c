
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int surfaceFlags; int contentFlags; char* damageShader; int shader; } ;
typedef TYPE_1__ shaderInfo_t ;
struct TYPE_5__ {int surfaceFlags; int contentFlags; int shader; } ;


 int Error (char*) ;
 int MAX_MAP_SHADERS ;
 int Q_stricmp (char const*,int ) ;
 int SYS_VRB ;
 TYPE_1__* ShaderInfoForShader (char const*) ;
 int Sys_FPrintf (int ,char*,int ,char*) ;
 TYPE_2__* bspShaders ;
 int numBSPShaders ;
 int strcpy (int ,char const*) ;

int EmitShader( const char *shader, int *contentFlags, int *surfaceFlags ){
 int i;
 shaderInfo_t *si;



 if ( shader == ((void*)0) ) {
  shader = "noshader";
 }


 for ( i = 0; i < numBSPShaders; i++ )
 {

  if ( surfaceFlags != ((void*)0) && bspShaders[ i ].surfaceFlags != *surfaceFlags ) {
   continue;
  }
  if ( contentFlags != ((void*)0) && bspShaders[ i ].contentFlags != *contentFlags ) {
   continue;
  }


  if ( !Q_stricmp( shader, bspShaders[ i ].shader ) ) {
   return i;
  }
 }


 si = ShaderInfoForShader( shader );


 if ( i == MAX_MAP_SHADERS ) {
  Error( "MAX_MAP_SHADERS" );
 }
 numBSPShaders++;
 strcpy( bspShaders[ i ].shader, shader );
 bspShaders[ i ].surfaceFlags = si->surfaceFlags;
 bspShaders[ i ].contentFlags = si->contentFlags;


 if ( surfaceFlags != ((void*)0) ) {
  bspShaders[ i ].surfaceFlags = *surfaceFlags;
 }
 if ( contentFlags != ((void*)0) ) {
  bspShaders[ i ].contentFlags = *contentFlags;
 }


 if ( si->damageShader != ((void*)0) && si->damageShader[ 0 ] != '\0' ) {
  Sys_FPrintf( SYS_VRB, "Shader %s has damage shader %s\n", si->shader, si->damageShader );
  EmitShader( si->damageShader, ((void*)0), ((void*)0) );
 }


 return i;
}
