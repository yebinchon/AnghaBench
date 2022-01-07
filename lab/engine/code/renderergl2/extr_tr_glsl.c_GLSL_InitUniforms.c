
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec_t ;
struct TYPE_6__ {int* uniforms; int* uniformBufferOffsets; int uniformBuffer; int program; } ;
typedef TYPE_1__ shaderProgram_t ;
struct TYPE_9__ {int glslMaxAnimatedBones; } ;
struct TYPE_8__ {int (* Malloc ) (int) ;} ;
struct TYPE_7__ {int type; int name; } ;
typedef int GLint ;
typedef int GLfloat ;
 int UNIFORM_COUNT ;
 TYPE_4__ glRefConfig ;
 int qglGetUniformLocation (int ,int ) ;
 TYPE_3__ ri ;
 int stub1 (int) ;
 TYPE_2__* uniformsInfo ;

void GLSL_InitUniforms(shaderProgram_t *program)
{
 int i, size;

 GLint *uniforms = program->uniforms;

 size = 0;
 for (i = 0; i < UNIFORM_COUNT; i++)
 {
  uniforms[i] = qglGetUniformLocation(program->program, uniformsInfo[i].name);

  if (uniforms[i] == -1)
   continue;

  program->uniformBufferOffsets[i] = size;

  switch(uniformsInfo[i].type)
  {
   case 133:
    size += sizeof(GLint);
    break;
   case 135:
    size += sizeof(GLfloat);
    break;
   case 134:
    size += sizeof(vec_t) * 5;
    break;
   case 130:
    size += sizeof(vec_t) * 2;
    break;
   case 129:
    size += sizeof(vec_t) * 3;
    break;
   case 128:
    size += sizeof(vec_t) * 4;
    break;
   case 132:
    size += sizeof(vec_t) * 16;
    break;
   case 131:
    size += sizeof(vec_t) * 16 * glRefConfig.glslMaxAnimatedBones;
    break;
   default:
    break;
  }
 }

 program->uniformBuffer = ri.Malloc(size);
}
