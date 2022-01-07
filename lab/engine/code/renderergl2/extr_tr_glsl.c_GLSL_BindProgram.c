
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* name; int program; } ;
typedef TYPE_2__ shaderProgram_t ;
struct TYPE_6__ {int c_glslShaderBinds; } ;
struct TYPE_9__ {TYPE_1__ pc; } ;
struct TYPE_8__ {scalar_t__ integer; } ;
typedef int GLuint ;


 scalar_t__ GL_UseProgram (int ) ;
 int GLimp_LogComment (int ) ;
 TYPE_4__ backEnd ;
 TYPE_3__* r_logFile ;
 int va (char*,char*) ;

void GLSL_BindProgram(shaderProgram_t * program)
{
 GLuint programObject = program ? program->program : 0;
 char *name = program ? program->name : "NULL";

 if(r_logFile->integer)
 {

  GLimp_LogComment(va("--- GLSL_BindProgram( %s ) ---\n", name));
 }

 if (GL_UseProgram(programObject))
  backEnd.pc.c_glslShaderBinds++;
}
