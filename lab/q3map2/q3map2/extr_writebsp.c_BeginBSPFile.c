
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* bspDrawIndexes ;
 scalar_t__ numBSPBrushSides ;
 int numBSPDrawIndexes ;
 scalar_t__ numBSPLeafBrushes ;
 scalar_t__ numBSPLeafSurfaces ;
 int numBSPLeafs ;
 scalar_t__ numBSPModels ;
 scalar_t__ numBSPNodes ;

void BeginBSPFile( void ){

 numBSPModels = 0;
 numBSPNodes = 0;
 numBSPBrushSides = 0;
 numBSPLeafSurfaces = 0;
 numBSPLeafBrushes = 0;


 numBSPLeafs = 1;



 numBSPDrawIndexes = 6;
 bspDrawIndexes[ 0 ] = 0;
 bspDrawIndexes[ 1 ] = 1;
 bspDrawIndexes[ 2 ] = 2;
 bspDrawIndexes[ 3 ] = 0;
 bspDrawIndexes[ 4 ] = 2;
 bspDrawIndexes[ 5 ] = 3;
}
