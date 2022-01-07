
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int node_t ;
struct TYPE_5__ {int numBrushes; int firstBrush; } ;
typedef TYPE_1__ entity_t ;
struct TYPE_6__ {int numBSPBrushes; int firstBSPBrush; scalar_t__ firstBSPSurface; scalar_t__ numBSPSurfaces; } ;
typedef TYPE_2__ bspModel_t ;


 int EmitDrawNode_r (int *) ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*) ;
 TYPE_2__* bspModels ;
 scalar_t__ numBSPDrawSurfaces ;
 size_t numBSPModels ;

void EndModel( entity_t *e, node_t *headnode ){
 bspModel_t *mod;



 Sys_FPrintf( SYS_VRB, "--- EndModel ---\n" );


 mod = &bspModels[ numBSPModels ];
 EmitDrawNode_r( headnode );


 mod->numBSPSurfaces = numBSPDrawSurfaces - mod->firstBSPSurface;
 mod->firstBSPBrush = e->firstBrush;
 mod->numBSPBrushes = e->numBrushes;


 numBSPModels++;
}
