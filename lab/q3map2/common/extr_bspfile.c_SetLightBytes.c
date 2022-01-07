
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (scalar_t__) ;
 scalar_t__ lightBytes ;
 int memset (scalar_t__,int ,int) ;
 int numLightBytes ;
 scalar_t__ safe_malloc_info (int,char*) ;

void SetLightBytes( int n ){
 if ( lightBytes != 0 ) {
  free( lightBytes );
 }

 numLightBytes = n;

 if ( n == 0 ) {
  return;
 }

 lightBytes = safe_malloc_info( numLightBytes, "SetLightBytes" );

 memset( lightBytes, 0, numLightBytes );
}
