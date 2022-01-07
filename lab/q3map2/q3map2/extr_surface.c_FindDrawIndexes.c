
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* bspDrawIndexes ;
 int numBSPDrawIndexes ;
 int numRedundantIndexes ;

int FindDrawIndexes( int numIndexes, int *indexes ){
 int i, j, numTestIndexes;



 if ( numIndexes < 3 || numBSPDrawIndexes < numIndexes || indexes == ((void*)0) ) {
  return numBSPDrawIndexes;
 }


 numTestIndexes = 1 + numBSPDrawIndexes - numIndexes;


 if ( numIndexes == 3 ) {

  for ( i = 0; i < numTestIndexes; i++ )
  {

   if ( indexes[ 0 ] == bspDrawIndexes[ i ] &&
     indexes[ 1 ] == bspDrawIndexes[ i + 1 ] &&
     indexes[ 2 ] == bspDrawIndexes[ i + 2 ] ) {
    numRedundantIndexes += numIndexes;
    return i;
   }
  }


  return numBSPDrawIndexes;
 }


 for ( i = 0; i < numTestIndexes; i++ )
 {

  if ( indexes[ 0 ] == bspDrawIndexes[ i ] &&
    indexes[ 1 ] == bspDrawIndexes[ i + 1 ] &&
    indexes[ 2 ] == bspDrawIndexes[ i + 2 ] &&
    indexes[ 3 ] == bspDrawIndexes[ i + 3 ] ) {

   if ( numIndexes == 4 ) {
    return i;
   }


   for ( j = 4; j < numIndexes; j++ )
   {
    if ( indexes[ j ] != bspDrawIndexes[ i + j ] ) {
     break;
    }
    else if ( j == ( numIndexes - 1 ) ) {
     numRedundantIndexes += numIndexes;
     return i;
    }
   }
  }
 }


 return numBSPDrawIndexes;
}
