
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ uniformBuffer; scalar_t__ program; scalar_t__ fragmentShader; scalar_t__ vertexShader; } ;
typedef TYPE_1__ shaderProgram_t ;
struct TYPE_6__ {int (* Free ) (scalar_t__) ;} ;


 int Com_Memset (TYPE_1__*,int ,int) ;
 int qglDeleteProgram (scalar_t__) ;
 int qglDeleteShader (scalar_t__) ;
 int qglDetachShader (scalar_t__,scalar_t__) ;
 TYPE_2__ ri ;
 int stub1 (scalar_t__) ;

void GLSL_DeleteGPUShader(shaderProgram_t *program)
{
 if(program->program)
 {
  if (program->vertexShader)
  {
   qglDetachShader(program->program, program->vertexShader);
   qglDeleteShader(program->vertexShader);
  }

  if (program->fragmentShader)
  {
   qglDetachShader(program->program, program->fragmentShader);
   qglDeleteShader(program->fragmentShader);
  }

  qglDeleteProgram(program->program);

  if (program->uniformBuffer)
  {
   ri.Free(program->uniformBuffer);
  }

  Com_Memset(program, 0, sizeof(*program));
 }
}
