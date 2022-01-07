
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef float vec_t ;
typedef int * vec3_t ;
struct TYPE_5__ {int* uniforms; int program; int name; scalar_t__* uniformBufferOffsets; scalar_t__ uniformBuffer; } ;
typedef TYPE_1__ shaderProgram_t ;
struct TYPE_7__ {int (* Printf ) (int ,char*,int,int ) ;} ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef int GLint ;


 scalar_t__ GLSL_VEC3 ;
 int PRINT_WARNING ;
 scalar_t__ VectorCompare (int * const,float*) ;
 int VectorCopy (int * const,float*) ;
 int qglProgramUniform3fEXT (int ,int,int ,int ,int ) ;
 TYPE_3__ ri ;
 int stub1 (int ,char*,int,int ) ;
 TYPE_2__* uniformsInfo ;

void GLSL_SetUniformVec3(shaderProgram_t *program, int uniformNum, const vec3_t v)
{
 GLint *uniforms = program->uniforms;
 vec_t *compare = (float *)(program->uniformBuffer + program->uniformBufferOffsets[uniformNum]);

 if (uniforms[uniformNum] == -1)
  return;

 if (uniformsInfo[uniformNum].type != GLSL_VEC3)
 {
  ri.Printf( PRINT_WARNING, "GLSL_SetUniformVec3: wrong type for uniform %i in program %s\n", uniformNum, program->name);
  return;
 }

 if (VectorCompare(v, compare))
 {
  return;
 }

 VectorCopy(v, compare);

 qglProgramUniform3fEXT(program->program, uniforms[uniformNum], v[0], v[1], v[2]);
}
