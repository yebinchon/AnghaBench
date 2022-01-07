
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_12__ {int rotation; float radius; int shaderTime; int* shaderRGBA; int reType; int customShader; int origin; } ;
typedef TYPE_4__ refEntity_t ;
typedef int qhandle_t ;
struct TYPE_9__ {int trTime; int trBase; int trDelta; int trType; } ;
struct TYPE_13__ {int leFlags; float radius; int startTime; int fadeInTime; int endTime; double lifeRate; float* color; TYPE_1__ pos; int leType; TYPE_4__ refEntity; } ;
typedef TYPE_5__ localEntity_t ;
struct TYPE_11__ {int smokePuffRageProShader; } ;
struct TYPE_10__ {scalar_t__ hardwareType; } ;
struct TYPE_14__ {TYPE_3__ media; TYPE_2__ glconfig; } ;


 TYPE_5__* CG_AllocLocalEntity () ;
 scalar_t__ GLHW_RAGEPRO ;
 int LE_MOVE_SCALE_FADE ;
 int Q_random (int*) ;
 int RT_SPRITE ;
 int TR_LINEAR ;
 int VectorCopy (int const,int ) ;
 TYPE_6__ cgs ;

localEntity_t *CG_SmokePuff( const vec3_t p, const vec3_t vel,
       float radius,
       float r, float g, float b, float a,
       float duration,
       int startTime,
       int fadeInTime,
       int leFlags,
       qhandle_t hShader ) {
 static int seed = 0x92;
 localEntity_t *le;
 refEntity_t *re;


 le = CG_AllocLocalEntity();
 le->leFlags = leFlags;
 le->radius = radius;

 re = &le->refEntity;
 re->rotation = Q_random( &seed ) * 360;
 re->radius = radius;
 re->shaderTime = startTime / 1000.0f;

 le->leType = LE_MOVE_SCALE_FADE;
 le->startTime = startTime;
 le->fadeInTime = fadeInTime;
 le->endTime = startTime + duration;
 if ( fadeInTime > startTime ) {
  le->lifeRate = 1.0 / ( le->endTime - le->fadeInTime );
 }
 else {
  le->lifeRate = 1.0 / ( le->endTime - le->startTime );
 }
 le->color[0] = r;
 le->color[1] = g;
 le->color[2] = b;
 le->color[3] = a;


 le->pos.trType = TR_LINEAR;
 le->pos.trTime = startTime;
 VectorCopy( vel, le->pos.trDelta );
 VectorCopy( p, le->pos.trBase );

 VectorCopy( p, re->origin );
 re->customShader = hShader;


 if ( cgs.glconfig.hardwareType == GLHW_RAGEPRO ) {
  re->customShader = cgs.media.smokePuffRageProShader;
  re->shaderRGBA[0] = 0xff;
  re->shaderRGBA[1] = 0xff;
  re->shaderRGBA[2] = 0xff;
  re->shaderRGBA[3] = 0xff;
 } else {
  re->shaderRGBA[0] = le->color[0] * 0xff;
  re->shaderRGBA[1] = le->color[1] * 0xff;
  re->shaderRGBA[2] = le->color[2] * 0xff;
  re->shaderRGBA[3] = 0xff;
 }

 re->reType = RT_SPRITE;
 re->radius = le->radius;

 return le;
}
