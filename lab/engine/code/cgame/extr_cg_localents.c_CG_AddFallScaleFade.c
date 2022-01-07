
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_11__ {int* shaderRGBA; double radius; scalar_t__* origin; } ;
typedef TYPE_3__ refEntity_t ;
struct TYPE_9__ {double* trDelta; scalar_t__* trBase; } ;
struct TYPE_12__ {float endTime; float lifeRate; int* color; double radius; TYPE_1__ pos; TYPE_3__ refEntity; } ;
typedef TYPE_4__ localEntity_t ;
struct TYPE_10__ {int vieworg; } ;
struct TYPE_13__ {float time; TYPE_2__ refdef; } ;


 int CG_FreeLocalEntity (TYPE_4__*) ;
 float VectorLength (int ) ;
 int VectorSubtract (scalar_t__*,int ,int ) ;
 TYPE_6__ cg ;
 int trap_R_AddRefEntityToScene (TYPE_3__*) ;

__attribute__((used)) static void CG_AddFallScaleFade( localEntity_t *le ) {
 refEntity_t *re;
 float c;
 vec3_t delta;
 float len;

 re = &le->refEntity;


 c = ( le->endTime - cg.time ) * le->lifeRate;

 re->shaderRGBA[3] = 0xff * c * le->color[3];

 re->origin[2] = le->pos.trBase[2] - ( 1.0 - c ) * le->pos.trDelta[2];

 re->radius = le->radius * ( 1.0 - c ) + 16;



 VectorSubtract( re->origin, cg.refdef.vieworg, delta );
 len = VectorLength( delta );
 if ( len < le->radius ) {
  CG_FreeLocalEntity( le );
  return;
 }

 trap_R_AddRefEntityToScene( re );
}
