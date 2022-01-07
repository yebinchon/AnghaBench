
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* side; struct TYPE_13__* next; } ;
typedef TYPE_3__ sideRef_t ;
struct TYPE_14__ {scalar_t__ outputNum; TYPE_2__* shaderInfo; TYPE_3__* sideRef; } ;
typedef TYPE_4__ mapDrawSurface_t ;
struct TYPE_15__ {int firstDrawSurf; } ;
typedef TYPE_5__ entity_t ;
struct TYPE_16__ {scalar_t__ surfaceNum; size_t shaderNum; } ;
typedef TYPE_6__ bspBrushSide_t ;
struct TYPE_17__ {int shader; } ;
struct TYPE_12__ {int surfaceFlags; int contentFlags; int shader; } ;
struct TYPE_11__ {size_t outputNum; } ;


 size_t EmitShader (int ,int *,int *) ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*) ;
 TYPE_6__* bspBrushSides ;
 TYPE_8__* bspShaders ;
 TYPE_4__* mapDrawSurfs ;
 int numMapDrawSurfs ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void FixBrushSides( entity_t *e ){
 int i;
 mapDrawSurface_t *ds;
 sideRef_t *sideRef;
 bspBrushSide_t *side;



 Sys_FPrintf( SYS_VRB, "--- FixBrushSides ---\n" );


 for ( i = e->firstDrawSurf; i < numMapDrawSurfs; i++ )
 {

  ds = &mapDrawSurfs[ i ];
  if ( ds->outputNum < 0 ) {
   continue;
  }


  for ( sideRef = ds->sideRef; sideRef != ((void*)0); sideRef = sideRef->next )
  {

   if ( sideRef->side == ((void*)0) || sideRef->side->outputNum < 0 ) {
    continue;
   }
   side = &bspBrushSides[ sideRef->side->outputNum ];


   side->surfaceNum = ds->outputNum;



   if ( strcmp( bspShaders[ side->shaderNum ].shader, ds->shaderInfo->shader ) ) {

    side->shaderNum = EmitShader( ds->shaderInfo->shader, &ds->shaderInfo->contentFlags, &ds->shaderInfo->surfaceFlags );
   }
  }
 }
}
