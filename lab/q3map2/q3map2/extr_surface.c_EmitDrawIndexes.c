
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int numIndexes; scalar_t__* indexes; scalar_t__ type; scalar_t__ numVerts; TYPE_1__* shaderInfo; } ;
typedef TYPE_2__ mapDrawSurface_t ;
struct TYPE_8__ {size_t firstIndex; int numIndexes; } ;
typedef TYPE_3__ bspDrawSurface_t ;
struct TYPE_6__ {int shader; } ;


 int Error (char*) ;
 size_t FindDrawIndexes (int,scalar_t__*) ;
 size_t MAX_MAP_DRAW_INDEXES ;
 scalar_t__ SURFACE_PATCH ;
 int SYS_WRN ;
 int Sys_FPrintf (int ,char*,int ,int ,scalar_t__,int) ;
 scalar_t__* bspDrawIndexes ;
 size_t numBSPDrawIndexes ;
 int numBSPDrawSurfaces ;

void EmitDrawIndexes( mapDrawSurface_t *ds, bspDrawSurface_t *out ){
 int i;



 out->firstIndex = FindDrawIndexes( ds->numIndexes, ds->indexes );
 out->numIndexes = ds->numIndexes;
 if ( out->firstIndex == numBSPDrawIndexes ) {

  for ( i = 0; i < ds->numIndexes; i++ )
  {
   if ( numBSPDrawIndexes == MAX_MAP_DRAW_INDEXES ) {
    Error( "MAX_MAP_DRAW_INDEXES" );
   }
   bspDrawIndexes[ numBSPDrawIndexes ] = ds->indexes[ i ];


   if ( ds->type != SURFACE_PATCH ) {
    if ( bspDrawIndexes[ numBSPDrawIndexes ] < 0 || bspDrawIndexes[ numBSPDrawIndexes ] >= ds->numVerts ) {
     Sys_FPrintf( SYS_WRN, "WARNING: %d %s has invalid index %d (%d)\n",
        numBSPDrawSurfaces,
        ds->shaderInfo->shader,
        bspDrawIndexes[ numBSPDrawIndexes ],
        i );
     bspDrawIndexes[ numBSPDrawIndexes ] = 0;
    }
   }


   numBSPDrawIndexes++;
  }
 }
}
