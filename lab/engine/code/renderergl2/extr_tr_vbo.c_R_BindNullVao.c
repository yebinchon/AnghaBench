
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vertexArrayObject; } ;
struct TYPE_3__ {int * currentVao; } ;


 int GL_ARRAY_BUFFER ;
 int GL_CheckErrors () ;
 int GL_ELEMENT_ARRAY_BUFFER ;
 int GLimp_LogComment (char*) ;
 TYPE_2__ glRefConfig ;
 TYPE_1__ glState ;
 int qglBindBuffer (int ,int ) ;
 int qglBindVertexArray (int ) ;

void R_BindNullVao(void)
{
 GLimp_LogComment("--- R_BindNullVao ---\n");

 if(glState.currentVao)
 {
  if (glRefConfig.vertexArrayObject)
  {
   qglBindVertexArray(0);


   if (1) qglBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
  }
  else
  {
   qglBindBuffer(GL_ARRAY_BUFFER, 0);
   qglBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
  }
  glState.currentVao = ((void*)0);
 }

 GL_CheckErrors();
}
