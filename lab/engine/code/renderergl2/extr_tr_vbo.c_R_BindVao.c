
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int indexesIBO; int vertexesVBO; int vao; int name; } ;
typedef TYPE_2__ vao_t ;
struct TYPE_11__ {int c_vaoBinds; } ;
struct TYPE_18__ {TYPE_1__ pc; } ;
struct TYPE_17__ {scalar_t__ intelGraphics; scalar_t__ vertexArrayObject; } ;
struct TYPE_16__ {int vertexAnimation; scalar_t__ vertexAttribsInterpolation; TYPE_2__* currentVao; } ;
struct TYPE_15__ {scalar_t__ integer; } ;
struct TYPE_14__ {int (* Error ) (int ,char*) ;} ;
struct TYPE_13__ {TYPE_2__* vao; } ;


 int ERR_DROP ;
 int GL_ARRAY_BUFFER ;
 int GL_ELEMENT_ARRAY_BUFFER ;
 int GLimp_LogComment (int ) ;
 int Vao_SetVertexPointers (TYPE_2__*) ;
 TYPE_8__ backEnd ;
 TYPE_7__ glRefConfig ;
 TYPE_6__ glState ;
 int qfalse ;
 int qglBindBuffer (int ,int ) ;
 int qglBindVertexArray (int ) ;
 TYPE_5__* r_logFile ;
 TYPE_4__ ri ;
 int stub1 (int ,char*) ;
 TYPE_3__ tess ;
 int va (char*,int ) ;

void R_BindVao(vao_t * vao)
{
 if(!vao)
 {

  ri.Error(ERR_DROP, "R_BindVao: NULL vao");
  return;
 }

 if(r_logFile->integer)
 {

  GLimp_LogComment(va("--- R_BindVao( %s ) ---\n", vao->name));
 }

 if(glState.currentVao != vao)
 {
  glState.currentVao = vao;

  glState.vertexAttribsInterpolation = 0;
  glState.vertexAnimation = qfalse;
  backEnd.pc.c_vaoBinds++;

  if (glRefConfig.vertexArrayObject)
  {
   qglBindVertexArray(vao->vao);


   if (glRefConfig.intelGraphics || vao == tess.vao)
    qglBindBuffer(GL_ELEMENT_ARRAY_BUFFER, vao->indexesIBO);


   if (vao == tess.vao)
    qglBindBuffer(GL_ARRAY_BUFFER, vao->vertexesVBO);
  }
  else
  {
   qglBindBuffer(GL_ARRAY_BUFFER, vao->vertexesVBO);
   qglBindBuffer(GL_ELEMENT_ARRAY_BUFFER, vao->indexesIBO);


   if (vao != tess.vao)
    Vao_SetVertexPointers(vao);
  }
 }
}
