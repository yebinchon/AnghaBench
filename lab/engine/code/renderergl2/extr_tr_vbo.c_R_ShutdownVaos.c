
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ indexesIBO; scalar_t__ vertexesVBO; scalar_t__ vao; } ;
typedef TYPE_1__ vao_t ;
struct TYPE_6__ {int (* Printf ) (int ,char*) ;} ;
struct TYPE_5__ {int numVaos; TYPE_1__** vaos; } ;


 int PRINT_ALL ;
 int R_BindNullVao () ;
 int qglDeleteBuffers (int,scalar_t__*) ;
 int qglDeleteVertexArrays (int,scalar_t__*) ;
 TYPE_3__ ri ;
 int stub1 (int ,char*) ;
 TYPE_2__ tr ;

void R_ShutdownVaos(void)
{
 int i;
 vao_t *vao;

 ri.Printf(PRINT_ALL, "------- R_ShutdownVaos -------\n");

 R_BindNullVao();

 for(i = 0; i < tr.numVaos; i++)
 {
  vao = tr.vaos[i];

  if(vao->vao)
   qglDeleteVertexArrays(1, &vao->vao);

  if(vao->vertexesVBO)
  {
   qglDeleteBuffers(1, &vao->vertexesVBO);
  }

  if(vao->indexesIBO)
  {
   qglDeleteBuffers(1, &vao->indexesIBO);
  }
 }

 tr.numVaos = 0;
}
