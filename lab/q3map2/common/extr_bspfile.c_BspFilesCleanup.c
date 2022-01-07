
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ drawSurfaces ;
 scalar_t__ drawVerts ;
 int free (scalar_t__) ;
 scalar_t__ gridData ;
 scalar_t__ lightBytes ;

void BspFilesCleanup(){
 if ( drawVerts != 0 ) {
  free( drawVerts );
 }
 if ( drawSurfaces != 0 ) {
  free( drawSurfaces );
 }
 if ( lightBytes != 0 ) {
  free( lightBytes );
 }
 if ( gridData != 0 ) {
  free( gridData );
 }
}
