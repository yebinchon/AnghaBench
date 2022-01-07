
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ numBatches; scalar_t__ numSurfaces; scalar_t__ indexOffset; TYPE_1__* vao; } ;
struct TYPE_3__ {int indexesSize; int indexesIBO; } ;


 int GL_DYNAMIC_DRAW ;
 int GL_ELEMENT_ARRAY_BUFFER ;
 int qglBindBuffer (int ,int ) ;
 int qglBufferData (int ,int ,int *,int ) ;
 TYPE_2__ vc ;

void VaoCache_RecycleIndexBuffer(void)
{
 qglBindBuffer(GL_ELEMENT_ARRAY_BUFFER, vc.vao->indexesIBO);
 qglBufferData(GL_ELEMENT_ARRAY_BUFFER, vc.vao->indexesSize, ((void*)0), GL_DYNAMIC_DRAW);
 vc.indexOffset = 0;
 vc.numSurfaces = 0;
 vc.numBatches = 0;
}
