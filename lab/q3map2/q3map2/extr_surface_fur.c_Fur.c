
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int numVerts; TYPE_2__* verts; scalar_t__ fur; TYPE_6__* shaderInfo; } ;
typedef TYPE_1__ mapDrawSurface_t ;
struct TYPE_8__ {int** color; int xyz; int normal; } ;
typedef TYPE_2__ bspDrawVert_t ;
struct TYPE_9__ {int furNumLayers; float furOffset; float furFade; } ;


 TYPE_1__* CloneSurface (TYPE_1__*,TYPE_6__*) ;
 int MAX_LIGHTMAPS ;
 int VectorMA (int ,float,int ,int ) ;
 scalar_t__ qtrue ;

void Fur( mapDrawSurface_t *ds ){
 int i, j, k, numLayers;
 float offset, fade, a;
 mapDrawSurface_t *fur;
 bspDrawVert_t *dv;



 if ( ds == ((void*)0) || ds->fur || ds->shaderInfo->furNumLayers < 1 ) {
  return;
 }


 numLayers = ds->shaderInfo->furNumLayers;
 offset = ds->shaderInfo->furOffset;
 fade = ds->shaderInfo->furFade * 255.0f;






 for ( j = 0; j < ds->numVerts; j++ )
 {

  dv = &ds->verts[ j ];


  a = (float) dv->color[ 0 ][ 3 ] / 255.0;


  VectorMA( dv->xyz, ( offset * a ), dv->normal, dv->xyz );
 }


 for ( i = 1; i < numLayers; i++ )
 {

  fur = CloneSurface( ds, ds->shaderInfo );
  if ( fur == ((void*)0) ) {
   return;
  }


  fur->fur = qtrue;


  for ( j = 0; j < fur->numVerts; j++ )
  {

   dv = &ds->verts[ j ];


   a = (float) dv->color[ 0 ][ 3 ] / 255.0;


   dv = &fur->verts[ j ];


   VectorMA( dv->xyz, ( offset * a * i ), dv->normal, dv->xyz );


   for ( k = 0; k < MAX_LIGHTMAPS; k++ )
   {
    a = (float) dv->color[ k ][ 3 ] - fade;
    if ( a > 255.0f ) {
     dv->color[ k ][ 3 ] = 255;
    }
    else if ( a < 0 ) {
     dv->color[ k ][ 3 ] = 0;
    }
    else{
     dv->color[ k ][ 3 ] = a;
    }
   }
  }
 }
}
