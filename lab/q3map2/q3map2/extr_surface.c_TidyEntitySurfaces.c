
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; scalar_t__ numVerts; } ;
typedef TYPE_1__ mapDrawSurface_t ;
struct TYPE_9__ {int firstDrawSurf; } ;
typedef TYPE_2__ entity_t ;


 int ClearSurface (TYPE_1__*) ;
 scalar_t__ SURFACE_BAD ;
 scalar_t__ SURFACE_FLARE ;
 scalar_t__ SURFACE_SHADER ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*,...) ;
 TYPE_1__* mapDrawSurfs ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int numMapDrawSurfs ;

void TidyEntitySurfaces( entity_t *e ){
 int i, j, deleted;
 mapDrawSurface_t *out, *in;



 Sys_FPrintf( SYS_VRB, "--- TidyEntitySurfaces ---\n" );


 deleted = 0;
 for ( i = e->firstDrawSurf, j = e->firstDrawSurf; j < numMapDrawSurfs; i++, j++ )
 {

  out = &mapDrawSurfs[ i ];


  for ( ; j < numMapDrawSurfs; j++ )
  {

   in = &mapDrawSurfs[ j ];


   if ( in->type == SURFACE_FLARE || in->type == SURFACE_SHADER ||
     ( in->type != SURFACE_BAD && in->numVerts > 0 ) ) {
    break;
   }


   ClearSurface( in );
   deleted++;
  }


  if ( i != j ) {
   memcpy( out, in, sizeof( mapDrawSurface_t ) );
  }
 }


 numMapDrawSurfs = i;


 Sys_FPrintf( SYS_VRB, "%9d empty or malformed surfaces deleted\n", deleted );
}
