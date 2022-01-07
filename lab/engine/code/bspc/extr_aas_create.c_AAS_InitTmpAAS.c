
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * nodebuffer; int * nodes; scalar_t__ numnodes; int * areas; scalar_t__ areanum; scalar_t__ numareas; int * faces; scalar_t__ facenum; scalar_t__ numfaces; } ;


 TYPE_1__ tmpaasworld ;

void AAS_InitTmpAAS(void)
{

 tmpaasworld.numfaces = 0;
 tmpaasworld.facenum = 0;
 tmpaasworld.faces = ((void*)0);

 tmpaasworld.numareas = 0;
 tmpaasworld.areanum = 0;
 tmpaasworld.areas = ((void*)0);

 tmpaasworld.numnodes = 0;
 tmpaasworld.nodes = ((void*)0);

 tmpaasworld.nodebuffer = ((void*)0);
}
