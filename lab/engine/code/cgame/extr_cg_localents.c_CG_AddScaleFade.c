
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_9__ {int* shaderRGBA; double radius; int origin; } ;
typedef TYPE_2__ refEntity_t ;
struct TYPE_10__ {float endTime; float lifeRate; int* color; double radius; TYPE_2__ refEntity; } ;
typedef TYPE_3__ localEntity_t ;
struct TYPE_8__ {int vieworg; } ;
struct TYPE_11__ {float time; TYPE_1__ refdef; } ;


 int CG_FreeLocalEntity (TYPE_3__*) ;
 float VectorLength (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_5__ cg ;
 int trap_R_AddRefEntityToScene (TYPE_2__*) ;

__attribute__((used)) static void CG_AddScaleFade( localEntity_t *le ) {
 refEntity_t *re;
 float c;
 vec3_t delta;
 float len;

 re = &le->refEntity;


 c = ( le->endTime - cg.time ) * le->lifeRate;

 re->shaderRGBA[3] = 0xff * c * le->color[3];
 re->radius = le->radius * ( 1.0 - c ) + 8;



 VectorSubtract( re->origin, cg.refdef.vieworg, delta );
 len = VectorLength( delta );
 if ( len < le->radius ) {
  CG_FreeLocalEntity( le );
  return;
 }

 trap_R_AddRefEntityToScene( re );
}
