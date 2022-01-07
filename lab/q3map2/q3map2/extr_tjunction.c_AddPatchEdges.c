
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int patchWidth; int patchHeight; TYPE_1__* verts; } ;
typedef TYPE_2__ mapDrawSurface_t ;
struct TYPE_4__ {float* xyz; } ;


 int AddEdge (float*,float*,int ) ;
 scalar_t__ ColinearEdge (float*,float*,float*) ;
 int qfalse ;

void AddPatchEdges( mapDrawSurface_t *ds ) {
 int i;
 float *v1, *v2, *v3;

 for ( i = 0 ; i < ds->patchWidth - 2; i += 2 ) {
  v1 = ds->verts[ i ].xyz;
  v2 = ds->verts[ i + 1 ].xyz;
  v3 = ds->verts[ i + 2 ].xyz;


  if ( ColinearEdge( v1, v2, v3 ) ) {
   AddEdge( v1, v3, qfalse );
  }

  v1 = ds->verts[ ( ds->patchHeight - 1 ) * ds->patchWidth + i ].xyz;
  v2 = ds->verts[ ( ds->patchHeight - 1 ) * ds->patchWidth + i + 1 ].xyz;
  v3 = ds->verts[ ( ds->patchHeight - 1 ) * ds->patchWidth + i + 2 ].xyz;


  if ( ColinearEdge( v1, v2, v3 ) ) {
   AddEdge( v1, v3, qfalse );
  }
 }

 for ( i = 0 ; i < ds->patchHeight - 2 ; i += 2 ) {
  v1 = ds->verts[ i * ds->patchWidth ].xyz;
  v2 = ds->verts[ ( i + 1 ) * ds->patchWidth ].xyz;
  v3 = ds->verts[ ( i + 2 ) * ds->patchWidth ].xyz;


  if ( ColinearEdge( v1, v2, v3 ) ) {
   AddEdge( v1, v3, qfalse );
  }

  v1 = ds->verts[ ( ds->patchWidth - 1 ) + i * ds->patchWidth ].xyz;
  v2 = ds->verts[ ( ds->patchWidth - 1 ) + ( i + 1 ) * ds->patchWidth ].xyz;
  v3 = ds->verts[ ( ds->patchWidth - 1 ) + ( i + 2 ) * ds->patchWidth ].xyz;


  if ( ColinearEdge( v1, v2, v3 ) ) {
   AddEdge( v1, v3, qfalse );
  }
 }


}
