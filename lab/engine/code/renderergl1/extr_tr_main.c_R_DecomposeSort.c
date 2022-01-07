
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int shader_t ;
struct TYPE_2__ {int ** sortedShaders; } ;


 int MAX_SHADERS ;
 unsigned int QSORT_FOGNUM_SHIFT ;
 unsigned int QSORT_REFENTITYNUM_SHIFT ;
 unsigned int QSORT_SHADERNUM_SHIFT ;
 unsigned int REFENTITYNUM_MASK ;
 TYPE_1__ tr ;

void R_DecomposeSort( unsigned sort, int *entityNum, shader_t **shader,
      int *fogNum, int *dlightMap ) {
 *fogNum = ( sort >> QSORT_FOGNUM_SHIFT ) & 31;
 *shader = tr.sortedShaders[ ( sort >> QSORT_SHADERNUM_SHIFT ) & (MAX_SHADERS-1) ];
 *entityNum = ( sort >> QSORT_REFENTITYNUM_SHIFT ) & REFENTITYNUM_MASK;
 *dlightMap = sort & 3;
}
