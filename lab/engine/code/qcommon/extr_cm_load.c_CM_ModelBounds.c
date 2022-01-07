
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_3__ {int maxs; int mins; } ;
typedef TYPE_1__ cmodel_t ;
typedef int clipHandle_t ;


 TYPE_1__* CM_ClipHandleToModel (int ) ;
 int VectorCopy (int ,int ) ;

void CM_ModelBounds( clipHandle_t model, vec3_t mins, vec3_t maxs ) {
 cmodel_t *cmod;

 cmod = CM_ClipHandleToModel( model );
 VectorCopy( cmod->mins, mins );
 VectorCopy( cmod->maxs, maxs );
}
