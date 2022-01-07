
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int numVerts; scalar_t__* bias; TYPE_2__* verts; TYPE_1__* shaderInfo; } ;
typedef TYPE_3__ mapDrawSurface_t ;
struct TYPE_7__ {int * st; } ;
struct TYPE_6__ {scalar_t__ globalTexture; } ;


 int CalcSurfaceTextureRange (TYPE_3__*) ;

void BiasSurfaceTextures( mapDrawSurface_t *ds ){
 int i;



 CalcSurfaceTextureRange( ds );


 if ( ds->shaderInfo->globalTexture ) {
  return;
 }


 for ( i = 0; i < ds->numVerts; i++ )
 {
  ds->verts[ i ].st[ 0 ] += ds->bias[ 0 ];
  ds->verts[ i ].st[ 1 ] += ds->bias[ 1 ];
 }
}
