
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bspDrawVert_t ;


 scalar_t__ bspDrawVerts ;
 int free (scalar_t__) ;
 int memset (scalar_t__,int ,int) ;
 int numBSPDrawVerts ;
 int numBSPDrawVertsBuffer ;
 scalar_t__ safe_malloc_info (int,char*) ;

void SetDrawVerts( int n ){
 if ( bspDrawVerts != 0 ) {
  free( bspDrawVerts );
 }

 numBSPDrawVerts = n;
 numBSPDrawVertsBuffer = numBSPDrawVerts;

 bspDrawVerts = safe_malloc_info( sizeof( bspDrawVert_t ) * numBSPDrawVertsBuffer, "IncDrawVerts" );

 memset( bspDrawVerts, 0, n * sizeof( bspDrawVert_t ) );
}
