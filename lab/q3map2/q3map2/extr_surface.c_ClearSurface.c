
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int planeNum; int * indexes; scalar_t__ numIndexes; int * verts; scalar_t__ numVerts; int planar; int type; } ;
typedef TYPE_1__ mapDrawSurface_t ;


 int SURFACE_BAD ;
 int free (int *) ;
 int numClearedSurfaces ;
 int qfalse ;

void ClearSurface( mapDrawSurface_t *ds ){
 ds->type = SURFACE_BAD;
 ds->planar = qfalse;
 ds->planeNum = -1;
 ds->numVerts = 0;
 if ( ds->verts != ((void*)0) ) {
  free( ds->verts );
 }
 ds->verts = ((void*)0);
 ds->numIndexes = 0;
 if ( ds->indexes != ((void*)0) ) {
  free( ds->indexes );
 }
 ds->indexes = ((void*)0);
 numClearedSurfaces++;
}
