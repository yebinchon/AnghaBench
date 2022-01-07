
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int drawVert_t ;


 scalar_t__ drawVerts ;
 int free (scalar_t__) ;
 int memset (scalar_t__,int ,int) ;
 int numDrawVerts ;
 int numDrawVertsBuffer ;
 scalar_t__ safe_malloc_info (int,char*) ;

void SetDrawVerts( int n ){
 if ( drawVerts != 0 ) {
  free( drawVerts );
 }

 numDrawVerts = n;
 numDrawVertsBuffer = numDrawVerts;

 drawVerts = safe_malloc_info( sizeof( drawVert_t ) * numDrawVertsBuffer, "IncDrawVerts" );

 memset( drawVerts, 0, n * sizeof( drawVert_t ) );
}
