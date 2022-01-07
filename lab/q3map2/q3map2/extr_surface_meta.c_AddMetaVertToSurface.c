
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int numVerts; TYPE_3__* verts; TYPE_1__* shaderInfo; } ;
typedef TYPE_2__ mapDrawSurface_t ;
struct TYPE_8__ {scalar_t__* st; scalar_t__** color; int normal; int xyz; } ;
typedef TYPE_3__ bspDrawVert_t ;
struct TYPE_6__ {int compileFlags; } ;


 int C_VERTEXLIT ;
 int VERTS_EXCEEDED ;
 scalar_t__ VectorCompare (int ,int ) ;
 int maxLMSurfaceVerts ;
 int maxSurfaceVerts ;
 int numMergedVerts ;
 scalar_t__ qfalse ;

int AddMetaVertToSurface( mapDrawSurface_t *ds, bspDrawVert_t *dv1, int *coincident ){
 int i;
 bspDrawVert_t *dv2;



 for ( i = 0; i < ds->numVerts; i++ )
 {

  dv2 = &ds->verts[ i ];


  if ( VectorCompare( dv1->xyz, dv2->xyz ) == qfalse ) {
   continue;
  }
  if ( VectorCompare( dv1->normal, dv2->normal ) == qfalse ) {
   continue;
  }


  ( *coincident )++;


  if ( dv1->st[ 0 ] != dv2->st[ 0 ] || dv1->st[ 1 ] != dv2->st[ 1 ] ) {
   continue;
  }
  if ( dv1->color[ 0 ][ 3 ] != dv2->color[ 0 ][ 3 ] ) {
   continue;
  }


  numMergedVerts++;
  return i;
 }


 if ( ds->numVerts >= ( ( ds->shaderInfo->compileFlags & C_VERTEXLIT ) ? maxSurfaceVerts : maxLMSurfaceVerts ) ) {
  return VERTS_EXCEEDED;
 }


 dv2 = &ds->verts[ ds->numVerts++ ];
 *dv2 = *dv1;
 return ( ds->numVerts - 1 );
}
