
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int byte ;
struct TYPE_2__ {int lightmapSize; } ;


 int Q_mkdir (char*) ;
 int SYS_VRB ;
 int SYS_WRN ;
 int StripExtension (char*) ;
 int Sys_FPrintf (int ,char*) ;
 int Sys_Printf (char*,char*) ;
 int WriteTGA24 (char*,int *,int,int,int ) ;
 int * bspLightBytes ;
 TYPE_1__* game ;
 int numBSPLightBytes ;
 int qfalse ;
 int source ;
 int sprintf (char*,char*,char*,int) ;
 int strcpy (char*,int ) ;

void ExportLightmaps( void ){
 int i;
 char dirname[ 1024 ], filename[ 1024 ];
 byte *lightmap;



 Sys_FPrintf( SYS_VRB, "--- ExportLightmaps ---\n" );


 strcpy( dirname, source );
 StripExtension( dirname );


 if ( bspLightBytes == ((void*)0) ) {
  Sys_FPrintf( SYS_WRN, "WARNING: No BSP lightmap data\n" );
  return;
 }


 Q_mkdir( dirname );


 for ( i = 0, lightmap = bspLightBytes; lightmap < ( bspLightBytes + numBSPLightBytes ); i++, lightmap += ( game->lightmapSize * game->lightmapSize * 3 ) )
 {

  sprintf( filename, "%s/lightmap_%04d.tga", dirname, i );
  Sys_Printf( "Writing %s\n", filename );
  WriteTGA24( filename, lightmap, game->lightmapSize, game->lightmapSize, qfalse );
 }
}
