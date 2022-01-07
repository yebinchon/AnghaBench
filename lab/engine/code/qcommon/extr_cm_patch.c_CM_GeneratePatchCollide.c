
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int vec3_t ;
struct patchCollide_s {int** bounds; } ;
typedef struct patchCollide_s patchCollide_t ;
struct TYPE_7__ {int width; int height; int ** points; void* wrapHeight; void* wrapWidth; } ;
typedef TYPE_1__ cGrid_t ;


 int AddPointToBounds (int ,int*,int*) ;
 int CM_PatchCollideFromGrid (TYPE_1__*,struct patchCollide_s*) ;
 int CM_RemoveDegenerateColumns (TYPE_1__*) ;
 int CM_SetGridWrapWidth (TYPE_1__*) ;
 int CM_SubdivideGridColumns (TYPE_1__*) ;
 int CM_TransposeGrid (TYPE_1__*) ;
 int ClearBounds (int*,int*) ;
 int Com_Error (int ,char*,...) ;
 int ERR_DROP ;
 struct patchCollide_s* Hunk_Alloc (int,int ) ;
 int MAX_GRID_SIZE ;
 int VectorCopy (int ,int ) ;
 int c_totalPatchBlocks ;
 int h_high ;
 void* qfalse ;

struct patchCollide_s *CM_GeneratePatchCollide( int width, int height, vec3_t *points ) {
 patchCollide_t *pf;
 cGrid_t grid;
 int i, j;

 if ( width <= 2 || height <= 2 || !points ) {
  Com_Error( ERR_DROP, "CM_GeneratePatchFacets: bad parameters: (%i, %i, %p)",
   width, height, (void *)points );
 }

 if ( !(width & 1) || !(height & 1) ) {
  Com_Error( ERR_DROP, "CM_GeneratePatchFacets: even sizes are invalid for quadratic meshes" );
 }

 if ( width > MAX_GRID_SIZE || height > MAX_GRID_SIZE ) {
  Com_Error( ERR_DROP, "CM_GeneratePatchFacets: source is > MAX_GRID_SIZE" );
 }


 grid.width = width;
 grid.height = height;
 grid.wrapWidth = qfalse;
 grid.wrapHeight = qfalse;
 for ( i = 0 ; i < width ; i++ ) {
  for ( j = 0 ; j < height ; j++ ) {
   VectorCopy( points[j*width + i], grid.points[i][j] );
  }
 }


 CM_SetGridWrapWidth( &grid );
 CM_SubdivideGridColumns( &grid );
 CM_RemoveDegenerateColumns( &grid );

 CM_TransposeGrid( &grid );

 CM_SetGridWrapWidth( &grid );
 CM_SubdivideGridColumns( &grid );
 CM_RemoveDegenerateColumns( &grid );




 pf = Hunk_Alloc( sizeof( *pf ), h_high );
 ClearBounds( pf->bounds[0], pf->bounds[1] );
 for ( i = 0 ; i < grid.width ; i++ ) {
  for ( j = 0 ; j < grid.height ; j++ ) {
   AddPointToBounds( grid.points[i][j], pf->bounds[0], pf->bounds[1] );
  }
 }

 c_totalPatchBlocks += ( grid.width - 1 ) * ( grid.height - 1 );


 CM_PatchCollideFromGrid( &grid, pf );


 pf->bounds[0][0] -= 1;
 pf->bounds[0][1] -= 1;
 pf->bounds[0][2] -= 1;

 pf->bounds[1][0] += 1;
 pf->bounds[1][1] += 1;
 pf->bounds[1][2] += 1;

 return pf;
}
