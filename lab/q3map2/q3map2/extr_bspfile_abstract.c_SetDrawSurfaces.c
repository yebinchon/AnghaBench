
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bspDrawSurface_t ;


 scalar_t__ bspDrawSurfaces ;
 int free (scalar_t__) ;
 int memset (scalar_t__,int ,int) ;
 int numBSPDrawSurfaces ;
 int numBSPDrawSurfacesBuffer ;
 scalar_t__ safe_malloc_info (int,char*) ;

void SetDrawSurfaces( int n ){
 if ( bspDrawSurfaces != 0 ) {
  free( bspDrawSurfaces );
 }

 numBSPDrawSurfaces = n;
 numBSPDrawSurfacesBuffer = numBSPDrawSurfaces;

 bspDrawSurfaces = safe_malloc_info( sizeof( bspDrawSurface_t ) * numBSPDrawSurfacesBuffer, "IncDrawSurfaces" );

 memset( bspDrawSurfaces, 0, numBSPDrawSurfacesBuffer * sizeof( bspDrawSurface_t ) );
}
