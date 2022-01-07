
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cmodel_t ;
typedef size_t clipHandle_t ;
struct TYPE_2__ {size_t numSubModels; int * cmodels; } ;


 size_t BOX_MODEL_HANDLE ;
 int Com_Error (int ,char*,size_t,...) ;
 int ERR_DROP ;
 size_t MAX_SUBMODELS ;
 int box_model ;
 TYPE_1__ cm ;

cmodel_t *CM_ClipHandleToModel( clipHandle_t handle ) {
 if ( handle < 0 ) {
  Com_Error( ERR_DROP, "CM_ClipHandleToModel: bad handle %i", handle );
 }
 if ( handle < cm.numSubModels ) {
  return &cm.cmodels[handle];
 }
 if ( handle == BOX_MODEL_HANDLE ) {
  return &box_model;
 }
 if ( handle < MAX_SUBMODELS ) {
  Com_Error( ERR_DROP, "CM_ClipHandleToModel: bad handle %i < %i < %i",
   cm.numSubModels, handle, MAX_SUBMODELS );
 }
 Com_Error( ERR_DROP, "CM_ClipHandleToModel: bad handle %i", handle + MAX_SUBMODELS );

 return ((void*)0);

}
