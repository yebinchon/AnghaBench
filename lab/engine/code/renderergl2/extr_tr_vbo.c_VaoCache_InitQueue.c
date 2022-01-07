
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ numSurfaces; scalar_t__ indexCommitSize; scalar_t__ vertexCommitSize; } ;


 TYPE_1__ vcq ;

void VaoCache_InitQueue(void)
{
 vcq.vertexCommitSize = 0;
 vcq.indexCommitSize = 0;
 vcq.numSurfaces = 0;
}
