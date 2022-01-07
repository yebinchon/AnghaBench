
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ longestCurve; scalar_t__ maxIterations; } ;
typedef TYPE_1__ parseMesh_t ;
typedef int byte ;



__attribute__((used)) static void GrowGroup_r( parseMesh_t *pm, int patchNum, int patchCount, parseMesh_t **meshes, byte *bordering, byte *group ){
 int i;
 const byte *row;



 if ( group[ patchNum ] ) {
  return;
 }



 group[ patchNum ] = 1;
 row = bordering + patchNum * patchCount;


 if ( meshes[ patchNum ]->longestCurve > pm->longestCurve ) {
  pm->longestCurve = meshes[ patchNum ]->longestCurve;
 }
 if ( meshes[ patchNum ]->maxIterations > pm->maxIterations ) {
  pm->maxIterations = meshes[ patchNum ]->maxIterations;
 }


 for ( i = 0; i < patchCount; i++ )
 {
  if ( row[ i ] ) {
   GrowGroup_r( pm, i, patchCount, meshes, bordering, group );
  }
 }
}
