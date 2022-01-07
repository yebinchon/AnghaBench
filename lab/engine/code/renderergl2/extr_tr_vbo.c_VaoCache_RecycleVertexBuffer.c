
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vertexOffset; TYPE_1__* vao; } ;
struct TYPE_3__ {int vertexesSize; int vertexesVBO; } ;


 int GL_ARRAY_BUFFER ;
 int GL_DYNAMIC_DRAW ;
 int qglBindBuffer (int ,int ) ;
 int qglBufferData (int ,int ,int *,int ) ;
 TYPE_2__ vc ;

void VaoCache_RecycleVertexBuffer(void)
{
 qglBindBuffer(GL_ARRAY_BUFFER, vc.vao->vertexesVBO);
 qglBufferData(GL_ARRAY_BUFFER, vc.vao->vertexesSize, ((void*)0), GL_DYNAMIC_DRAW);
 vc.vertexOffset = 0;
}
