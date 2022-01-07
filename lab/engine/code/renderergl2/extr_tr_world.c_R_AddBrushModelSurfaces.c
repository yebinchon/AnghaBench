
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int hModel; } ;
struct TYPE_15__ {TYPE_1__ e; } ;
typedef TYPE_4__ trRefEntity_t ;
struct TYPE_16__ {TYPE_6__* bmodel; } ;
typedef TYPE_5__ model_t ;
struct TYPE_17__ {int numSurfaces; int firstSurface; int bounds; } ;
typedef TYPE_6__ bmodel_t ;
struct TYPE_18__ {scalar_t__ viewCount; TYPE_3__* currentEntity; TYPE_2__* world; int refdef; } ;
struct TYPE_14__ {int needDlights; } ;
struct TYPE_13__ {scalar_t__* surfacesViewCount; scalar_t__ surfaces; } ;


 int CULL_OUT ;
 int R_AddWorldSurface (scalar_t__,int ,int ) ;
 int R_CullLocalBox (int ) ;
 int R_DlightBmodel (TYPE_6__*) ;
 TYPE_5__* R_GetModelByHandle (int ) ;
 int R_SetupEntityLighting (int *,TYPE_4__*) ;
 TYPE_7__ tr ;

void R_AddBrushModelSurfaces ( trRefEntity_t *ent ) {
 bmodel_t *bmodel;
 int clip;
 model_t *pModel;
 int i;

 pModel = R_GetModelByHandle( ent->e.hModel );

 bmodel = pModel->bmodel;

 clip = R_CullLocalBox( bmodel->bounds );
 if ( clip == CULL_OUT ) {
  return;
 }

 R_SetupEntityLighting( &tr.refdef, ent );
 R_DlightBmodel( bmodel );

 for ( i = 0 ; i < bmodel->numSurfaces ; i++ ) {
  int surf = bmodel->firstSurface + i;

  if (tr.world->surfacesViewCount[surf] != tr.viewCount)
  {
   tr.world->surfacesViewCount[surf] = tr.viewCount;
   R_AddWorldSurface( tr.world->surfaces + surf, tr.currentEntity->needDlights, 0 );
  }
 }
}
