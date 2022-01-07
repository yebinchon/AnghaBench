
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int shaderInfo_t ;
struct TYPE_5__ {int * shaderInfo; scalar_t__ entityNum; } ;
typedef TYPE_1__ mapDrawSurface_t ;


 TYPE_1__* AllocDrawSurface (int ) ;
 int SURFACE_SHADER ;
 void* ShaderInfoForShader (char*) ;
 TYPE_1__* mapDrawSurfs ;
 int numMapDrawSurfs ;

mapDrawSurface_t *DrawSurfaceForShader( char *shader ){
 int i;
 shaderInfo_t *si;
 mapDrawSurface_t *ds;



 si = ShaderInfoForShader( shader );


 for ( i = 0; i < numMapDrawSurfs; i++ )
 {

  ds = &mapDrawSurfs[ i ];


  if ( ds->shaderInfo == si ) {
   return ds;
  }
 }


 ds = AllocDrawSurface( SURFACE_SHADER );
 ds->entityNum = 0;
 ds->shaderInfo = ShaderInfoForShader( shader );


 return ds;
}
