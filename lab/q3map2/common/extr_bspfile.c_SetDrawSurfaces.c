
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsurface_t ;
typedef int drawVert_t ;


 scalar_t__ drawSurfaces ;
 int free (scalar_t__) ;
 int memset (scalar_t__,int ,int) ;
 int numDrawSurfaces ;
 int numDrawSurfacesBuffer ;
 scalar_t__ safe_malloc_info (int,char*) ;

void SetDrawSurfaces( int n ){
 if ( drawSurfaces != 0 ) {
  free( drawSurfaces );
 }

 numDrawSurfaces = n;
 numDrawSurfacesBuffer = numDrawSurfaces;

 drawSurfaces = safe_malloc_info( sizeof( dsurface_t ) * numDrawSurfacesBuffer, "IncDrawSurfaces" );

 memset( drawSurfaces, 0, n * sizeof( drawVert_t ) );
}
