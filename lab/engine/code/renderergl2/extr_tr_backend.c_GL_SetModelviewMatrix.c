
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mat4_t ;
struct TYPE_2__ {int modelviewProjection; int modelview; int projection; } ;


 int Mat4Copy (int ,int ) ;
 int Mat4Multiply (int ,int ,int ) ;
 TYPE_1__ glState ;

void GL_SetModelviewMatrix(mat4_t matrix)
{
 Mat4Copy(matrix, glState.modelview);
 Mat4Multiply(glState.projection, glState.modelview, glState.modelviewProjection);
}
