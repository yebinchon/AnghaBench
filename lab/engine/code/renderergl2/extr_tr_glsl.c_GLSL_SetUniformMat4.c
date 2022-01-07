
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef float vec_t ;
struct TYPE_5__ {int* uniforms; int program; int name; scalar_t__* uniformBufferOffsets; scalar_t__ uniformBuffer; } ;
typedef TYPE_1__ shaderProgram_t ;
typedef int mat4_t ;
struct TYPE_7__ {int (* Printf ) (int ,char*,int,int ) ;} ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef int GLint ;


 scalar_t__ GLSL_MAT16 ;
 int GL_FALSE ;
 scalar_t__ Mat4Compare (int const,float*) ;
 int Mat4Copy (int const,float*) ;
 int PRINT_WARNING ;
 int qglProgramUniformMatrix4fvEXT (int ,int,int,int ,int const) ;
 TYPE_3__ ri ;
 int stub1 (int ,char*,int,int ) ;
 TYPE_2__* uniformsInfo ;

void GLSL_SetUniformMat4(shaderProgram_t *program, int uniformNum, const mat4_t matrix)
{
 GLint *uniforms = program->uniforms;
 vec_t *compare = (float *)(program->uniformBuffer + program->uniformBufferOffsets[uniformNum]);

 if (uniforms[uniformNum] == -1)
  return;

 if (uniformsInfo[uniformNum].type != GLSL_MAT16)
 {
  ri.Printf( PRINT_WARNING, "GLSL_SetUniformMat4: wrong type for uniform %i in program %s\n", uniformNum, program->name);
  return;
 }

 if (Mat4Compare(matrix, compare))
 {
  return;
 }

 Mat4Copy(matrix, compare);

 qglProgramUniformMatrix4fvEXT(program->program, uniforms[uniformNum], 1, GL_FALSE, matrix);
}
