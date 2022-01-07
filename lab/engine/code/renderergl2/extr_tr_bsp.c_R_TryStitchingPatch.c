
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ surfaceType; scalar_t__ lodRadius; scalar_t__* lodOrigin; } ;
typedef TYPE_2__ srfBspSurface_t ;
struct TYPE_6__ {int numsurfaces; TYPE_1__* surfaces; } ;
struct TYPE_4__ {scalar_t__ data; } ;


 scalar_t__ R_StitchPatches (int,int) ;
 scalar_t__ SF_GRID ;
 TYPE_3__ s_worldData ;

int R_TryStitchingPatch( int grid1num ) {
 int j, numstitches;
 srfBspSurface_t *grid1, *grid2;

 numstitches = 0;
 grid1 = (srfBspSurface_t *) s_worldData.surfaces[grid1num].data;
 for ( j = 0; j < s_worldData.numsurfaces; j++ ) {

  grid2 = (srfBspSurface_t *) s_worldData.surfaces[j].data;

  if ( grid2->surfaceType != SF_GRID ) continue;

  if ( grid1->lodRadius != grid2->lodRadius ) continue;

  if ( grid1->lodOrigin[0] != grid2->lodOrigin[0] ) continue;
  if ( grid1->lodOrigin[1] != grid2->lodOrigin[1] ) continue;
  if ( grid1->lodOrigin[2] != grid2->lodOrigin[2] ) continue;

  while (R_StitchPatches(grid1num, j))
  {
   numstitches++;
  }
 }
 return numstitches;
}
