
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int numVerts; TYPE_1__* verts; } ;
typedef TYPE_2__ mapDrawSurface_t ;
struct TYPE_4__ {int xyz; int ** lightmap; } ;


 int AddEdge (int ,int ,int ) ;
 int qfalse ;

void AddSurfaceEdges( mapDrawSurface_t *ds ){
 int i;


 for ( i = 0; i < ds->numVerts; i++ )
 {

  ds->verts[i].lightmap[ 0 ][ 0 ] =
   AddEdge( ds->verts[ i ].xyz, ds->verts[ ( i + 1 ) % ds->numVerts ].xyz, qfalse );
 }
}
