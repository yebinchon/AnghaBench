
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int byte ;


 int VIS_HEADER_SIZE ;
 int* bspVisBytes ;
 int numBSPVisBytes ;
 int qfalse ;
 int qtrue ;

qboolean ClusterVisible( int a, int b ){
 int portalClusters, leafBytes;
 byte *pvs;



 if ( a < 0 || b < 0 ) {
  return qfalse;
 }


 if ( a == b ) {
  return qtrue;
 }


 if ( numBSPVisBytes <= 8 ) {
  return qtrue;
 }


 portalClusters = ( (int *) bspVisBytes )[ 0 ];
 leafBytes = ( (int*) bspVisBytes )[ 1 ];
 pvs = bspVisBytes + VIS_HEADER_SIZE + ( a * leafBytes );


 if ( ( pvs[ b >> 3 ] & ( 1 << ( b & 7 ) ) ) ) {
  return qtrue;
 }
 return qfalse;
}
