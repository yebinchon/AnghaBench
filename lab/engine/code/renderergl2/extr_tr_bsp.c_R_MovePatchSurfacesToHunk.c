
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int srfVert_t ;
struct TYPE_6__ {scalar_t__ surfaceType; int width; int height; int numIndexes; int numVerts; void* verts; void* indexes; void* heightLodError; void* widthLodError; } ;
typedef TYPE_2__ srfBspSurface_t ;
typedef int glIndex_t ;
struct TYPE_8__ {int (* Free ) (void*) ;void* (* Hunk_Alloc ) (int,int ) ;} ;
struct TYPE_7__ {int numsurfaces; TYPE_1__* surfaces; } ;
struct TYPE_5__ {scalar_t__ data; } ;


 int Com_Memcpy (void*,void*,int) ;
 scalar_t__ SF_GRID ;
 int h_low ;
 TYPE_4__ ri ;
 TYPE_3__ s_worldData ;
 void* stub1 (int,int ) ;
 int stub2 (void*) ;
 void* stub3 (int,int ) ;
 int stub4 (void*) ;
 void* stub5 (int,int ) ;
 int stub6 (void*) ;
 void* stub7 (int,int ) ;
 int stub8 (void*) ;

void R_MovePatchSurfacesToHunk(void) {
 int i;
 srfBspSurface_t *grid;

 for ( i = 0; i < s_worldData.numsurfaces; i++ ) {
  void *copyFrom;

  grid = (srfBspSurface_t *) s_worldData.surfaces[i].data;

  if ( grid->surfaceType != SF_GRID )
   continue;


  copyFrom = grid->widthLodError;
  grid->widthLodError = ri.Hunk_Alloc( grid->width * 4, h_low );
  Com_Memcpy(grid->widthLodError, copyFrom, grid->width * 4);
  ri.Free(copyFrom);

  copyFrom = grid->heightLodError;
  grid->heightLodError = ri.Hunk_Alloc(grid->height * 4, h_low);
  Com_Memcpy(grid->heightLodError, copyFrom, grid->height * 4);
  ri.Free(copyFrom);

  copyFrom = grid->indexes;
  grid->indexes = ri.Hunk_Alloc(grid->numIndexes * sizeof(glIndex_t), h_low);
  Com_Memcpy(grid->indexes, copyFrom, grid->numIndexes * sizeof(glIndex_t));
  ri.Free(copyFrom);

  copyFrom = grid->verts;
  grid->verts = ri.Hunk_Alloc(grid->numVerts * sizeof(srfVert_t), h_low);
  Com_Memcpy(grid->verts, copyFrom, grid->numVerts * sizeof(srfVert_t));
  ri.Free(copyFrom);
 }
}
