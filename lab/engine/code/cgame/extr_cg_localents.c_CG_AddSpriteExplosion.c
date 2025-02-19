
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int* shaderRGBA; int radius; int origin; int reType; } ;
typedef TYPE_1__ refEntity_t ;
struct TYPE_7__ {float endTime; float startTime; float light; int * lightColor; TYPE_1__ refEntity; } ;
typedef TYPE_2__ localEntity_t ;
struct TYPE_8__ {float time; } ;


 int RT_SPRITE ;
 TYPE_4__ cg ;
 int trap_R_AddLightToScene (int ,float,int ,int ,int ) ;
 int trap_R_AddRefEntityToScene (TYPE_1__*) ;

__attribute__((used)) static void CG_AddSpriteExplosion( localEntity_t *le ) {
 refEntity_t re;
 float c;

 re = le->refEntity;

 c = ( le->endTime - cg.time ) / ( float ) ( le->endTime - le->startTime );
 if ( c > 1 ) {
  c = 1.0;
 }

 re.shaderRGBA[0] = 0xff;
 re.shaderRGBA[1] = 0xff;
 re.shaderRGBA[2] = 0xff;
 re.shaderRGBA[3] = 0xff * c * 0.33;

 re.reType = RT_SPRITE;
 re.radius = 42 * ( 1.0 - c ) + 30;

 trap_R_AddRefEntityToScene( &re );


 if ( le->light ) {
  float light;

  light = (float)( cg.time - le->startTime ) / ( le->endTime - le->startTime );
  if ( light < 0.5 ) {
   light = 1.0;
  } else {
   light = 1.0 - ( light - 0.5 ) * 2;
  }
  light = le->light * light;
  trap_R_AddLightToScene(re.origin, light, le->lightColor[0], le->lightColor[1], le->lightColor[2] );
 }
}
