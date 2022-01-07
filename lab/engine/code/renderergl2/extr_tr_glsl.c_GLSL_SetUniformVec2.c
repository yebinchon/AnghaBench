
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vec_t ;
typedef scalar_t__* vec2_t ;
struct TYPE_5__ {int* uniforms; int program; int name; scalar_t__* uniformBufferOffsets; scalar_t__ uniformBuffer; } ;
typedef TYPE_1__ shaderProgram_t ;
struct TYPE_7__ {int (* Printf ) (int ,char*,int,int ) ;} ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef int GLint ;


 scalar_t__ GLSL_VEC2 ;
 int PRINT_WARNING ;
 int qglProgramUniform2fEXT (int ,int,scalar_t__,scalar_t__) ;
 TYPE_3__ ri ;
 int stub1 (int ,char*,int,int ) ;
 TYPE_2__* uniformsInfo ;

void GLSL_SetUniformVec2(shaderProgram_t *program, int uniformNum, const vec2_t v)
{
 GLint *uniforms = program->uniforms;
 vec_t *compare = (float *)(program->uniformBuffer + program->uniformBufferOffsets[uniformNum]);

 if (uniforms[uniformNum] == -1)
  return;

 if (uniformsInfo[uniformNum].type != GLSL_VEC2)
 {
  ri.Printf( PRINT_WARNING, "GLSL_SetUniformVec2: wrong type for uniform %i in program %s\n", uniformNum, program->name);
  return;
 }

 if (v[0] == compare[0] && v[1] == compare[1])
 {
  return;
 }

 compare[0] = v[0];
 compare[1] = v[1];

 qglProgramUniform2fEXT(program->program, uniforms[uniformNum], v[0], v[1]);
}
