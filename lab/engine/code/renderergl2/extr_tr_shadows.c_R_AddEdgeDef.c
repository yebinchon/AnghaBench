
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i2; int facing; } ;


 int MAX_EDGE_DEFS ;
 TYPE_1__** edgeDefs ;
 int* numEdgeDefs ;

void R_AddEdgeDef( int i1, int i2, int facing ) {
 int c;

 c = numEdgeDefs[ i1 ];
 if ( c == MAX_EDGE_DEFS ) {
  return;
 }
 edgeDefs[ i1 ][ c ].i2 = i2;
 edgeDefs[ i1 ][ c ].facing = facing;

 numEdgeDefs[ i1 ]++;
}
