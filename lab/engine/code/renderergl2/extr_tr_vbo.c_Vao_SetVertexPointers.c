
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* attribs; } ;
typedef TYPE_1__ vao_t ;
struct TYPE_8__ {int offset; int stride; int normalized; int type; int count; scalar_t__ enabled; } ;
typedef TYPE_2__ vaoAttrib_t ;
typedef int uint32_t ;
struct TYPE_11__ {scalar_t__ vertexArrayObject; } ;
struct TYPE_10__ {int vertexAttribsEnabled; } ;
struct TYPE_9__ {TYPE_1__* vao; } ;


 int ATTR_INDEX_COUNT ;
 int BUFFER_OFFSET (int ) ;
 TYPE_5__ glRefConfig ;
 TYPE_4__ glState ;
 int qglDisableVertexAttribArray (int) ;
 int qglEnableVertexAttribArray (int) ;
 int qglVertexAttribPointer (int,int ,int ,int ,int ,int ) ;
 TYPE_3__ tess ;

void Vao_SetVertexPointers(vao_t *vao)
{
 int attribIndex;


 for (attribIndex = 0; attribIndex < ATTR_INDEX_COUNT; attribIndex++)
 {
  uint32_t attribBit = 1 << attribIndex;
  vaoAttrib_t *vAtb = &vao->attribs[attribIndex];

  if (vAtb->enabled)
  {
   qglVertexAttribPointer(attribIndex, vAtb->count, vAtb->type, vAtb->normalized, vAtb->stride, BUFFER_OFFSET(vAtb->offset));
   if (glRefConfig.vertexArrayObject || !(glState.vertexAttribsEnabled & attribBit))
    qglEnableVertexAttribArray(attribIndex);

   if (!glRefConfig.vertexArrayObject || vao == tess.vao)
    glState.vertexAttribsEnabled |= attribBit;
  }
  else
  {


   if (!glRefConfig.vertexArrayObject && (glState.vertexAttribsEnabled & attribBit))
    qglDisableVertexAttribArray(attribIndex);

   if (!glRefConfig.vertexArrayObject || vao == tess.vao)
    glState.vertexAttribsEnabled &= ~attribBit;
  }
 }
}
