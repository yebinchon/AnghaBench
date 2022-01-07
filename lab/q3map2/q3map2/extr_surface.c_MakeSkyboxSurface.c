
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int numVerts; int * lightmapVecs; TYPE_1__* verts; struct TYPE_8__* parent; int shaderInfo; } ;
typedef TYPE_2__ mapDrawSurface_t ;
struct TYPE_7__ {int xyz; } ;


 TYPE_2__* CloneSurface (TYPE_2__*,int ) ;
 int VectorClear (int ) ;
 int m4x4_transform_point (int ,int ) ;
 int skyboxTransform ;

mapDrawSurface_t *MakeSkyboxSurface( mapDrawSurface_t *src ){
 int i;
 mapDrawSurface_t *ds;



 if ( src == ((void*)0) ) {
  return ((void*)0);
 }


 ds = CloneSurface( src, src->shaderInfo );
 if ( ds == ((void*)0) ) {
  return ((void*)0);
 }


 ds->parent = src;


 for ( i = 0; i < ds->numVerts; i++ )
 {
  m4x4_transform_point( skyboxTransform, ds->verts[ i ].xyz );




 }


 VectorClear( ds->lightmapVecs[ 2 ] );


 return ds;
}
