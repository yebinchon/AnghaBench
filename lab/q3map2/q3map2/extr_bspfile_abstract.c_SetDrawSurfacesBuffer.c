
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bspDrawSurface_t ;


 int MAX_MAP_DRAW_SURFS ;
 scalar_t__ bspDrawSurfaces ;
 int free (scalar_t__) ;
 int memset (scalar_t__,int ,int) ;
 int numBSPDrawSurfacesBuffer ;
 scalar_t__ safe_malloc_info (int,char*) ;

void SetDrawSurfacesBuffer(){
 if ( bspDrawSurfaces != 0 ) {
  free( bspDrawSurfaces );
 }

 numBSPDrawSurfacesBuffer = MAX_MAP_DRAW_SURFS;

 bspDrawSurfaces = safe_malloc_info( sizeof( bspDrawSurface_t ) * numBSPDrawSurfacesBuffer, "IncDrawSurfaces" );

 memset( bspDrawSurfaces, 0, numBSPDrawSurfacesBuffer * sizeof( bspDrawSurface_t ) );
}
