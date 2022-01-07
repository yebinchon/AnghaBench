
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bspDrawSurfaces ;
 scalar_t__ bspDrawVerts ;
 scalar_t__ bspGridPoints ;
 scalar_t__ bspLightBytes ;
 int free (scalar_t__) ;

void BSPFilesCleanup(){
 if ( bspDrawVerts != 0 ) {
  free( bspDrawVerts );
 }
 if ( bspDrawSurfaces != 0 ) {
  free( bspDrawSurfaces );
 }
 if ( bspLightBytes != 0 ) {
  free( bspLightBytes );
 }
 if ( bspGridPoints != 0 ) {
  free( bspGridPoints );
 }
}
