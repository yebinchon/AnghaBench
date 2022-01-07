
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ surfaceType; void* lodStitched; } ;
typedef TYPE_2__ srfBspSurface_t ;
struct TYPE_8__ {int (* Printf ) (int ,char*,int) ;} ;
struct TYPE_7__ {int numsurfaces; TYPE_1__* surfaces; } ;
struct TYPE_5__ {scalar_t__ data; } ;


 int PRINT_ALL ;
 scalar_t__ R_TryStitchingPatch (int) ;
 scalar_t__ SF_GRID ;
 int qfalse ;
 void* qtrue ;
 TYPE_4__ ri ;
 TYPE_3__ s_worldData ;
 int stub1 (int ,char*,int) ;

void R_StitchAllPatches( void ) {
 int i, stitched, numstitches;
 srfBspSurface_t *grid1;

 numstitches = 0;
 do
 {
  stitched = qfalse;
  for ( i = 0; i < s_worldData.numsurfaces; i++ ) {

   grid1 = (srfBspSurface_t *) s_worldData.surfaces[i].data;

   if ( grid1->surfaceType != SF_GRID )
    continue;

   if ( grid1->lodStitched )
    continue;

   grid1->lodStitched = qtrue;
   stitched = qtrue;

   numstitches += R_TryStitchingPatch( i );
  }
 }
 while (stitched);
 ri.Printf( PRINT_ALL, "stitched %d LoD cracks\n", numstitches );
}
