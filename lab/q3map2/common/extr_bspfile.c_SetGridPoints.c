
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (scalar_t__) ;
 scalar_t__ gridData ;
 int memset (scalar_t__,int ,int) ;
 int numGridPoints ;
 scalar_t__ safe_malloc_info (int,char*) ;

void SetGridPoints( int n ){
 if ( gridData != 0 ) {
  free( gridData );
 }

 numGridPoints = n;

 if ( n == 0 ) {
  return;
 }

 gridData = safe_malloc_info( numGridPoints * 8, "SetGridPoints" );

 memset( gridData, 0, numGridPoints * 8 );
}
