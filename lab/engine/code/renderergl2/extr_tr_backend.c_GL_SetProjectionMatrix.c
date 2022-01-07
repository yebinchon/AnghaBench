
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mat4_t ;
struct TYPE_4__ {scalar_t__ vertFlipBuffer; } ;
struct TYPE_6__ {TYPE_1__ viewParms; } ;
struct TYPE_5__ {int modelviewProjection; int modelview; int * projection; } ;


 int Mat4Copy (int ,int *) ;
 int Mat4Multiply (int *,int ,int ) ;
 TYPE_3__ backEnd ;
 TYPE_2__ glState ;

void GL_SetProjectionMatrix(mat4_t matrix)
{
 Mat4Copy(matrix, glState.projection);
 if ( backEnd.viewParms.vertFlipBuffer ) {
  glState.projection[ 1] = -glState.projection[ 1];
  glState.projection[ 5] = -glState.projection[ 5];
  glState.projection[ 9] = -glState.projection[ 9];
  glState.projection[13] = -glState.projection[13];
 }
 Mat4Multiply(glState.projection, glState.modelview, glState.modelviewProjection);
}
