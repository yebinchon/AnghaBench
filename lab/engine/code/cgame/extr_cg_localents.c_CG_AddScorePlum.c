
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_14__ {int* shaderRGBA; int radius; int* origin; int customShader; } ;
typedef TYPE_4__ refEntity_t ;
struct TYPE_11__ {int trBase; } ;
struct TYPE_15__ {float endTime; float lifeRate; int radius; TYPE_1__ pos; TYPE_4__ refEntity; } ;
typedef TYPE_5__ localEntity_t ;
struct TYPE_12__ {int* vieworg; } ;
struct TYPE_17__ {float time; TYPE_2__ refdef; } ;
struct TYPE_13__ {int * numberShaders; } ;
struct TYPE_16__ {TYPE_3__ media; } ;


 int CG_FreeLocalEntity (TYPE_5__*) ;
 int CrossProduct (int*,int*,int*) ;
 float M_PI ;
 int NUMBER_SIZE ;
 int VectorCopy (int ,int*) ;
 float VectorLength (int*) ;
 int VectorMA (int*,float,int*,int*) ;
 int VectorNormalize (int*) ;
 int VectorSubtract (int*,int*,int*) ;
 TYPE_8__ cg ;
 TYPE_7__ cgs ;
 int qfalse ;
 int qtrue ;
 int sin (float) ;
 int trap_R_AddRefEntityToScene (TYPE_4__*) ;

void CG_AddScorePlum( localEntity_t *le ) {
 refEntity_t *re;
 vec3_t origin, delta, dir, vec, up = {0, 0, 1};
 float c, len;
 int i, score, digits[10], numdigits, negative;

 re = &le->refEntity;

 c = ( le->endTime - cg.time ) * le->lifeRate;

 score = le->radius;
 if (score < 0) {
  re->shaderRGBA[0] = 0xff;
  re->shaderRGBA[1] = 0x11;
  re->shaderRGBA[2] = 0x11;
 }
 else {
  re->shaderRGBA[0] = 0xff;
  re->shaderRGBA[1] = 0xff;
  re->shaderRGBA[2] = 0xff;
  if (score >= 50) {
   re->shaderRGBA[1] = 0;
  } else if (score >= 20) {
   re->shaderRGBA[0] = re->shaderRGBA[1] = 0;
  } else if (score >= 10) {
   re->shaderRGBA[2] = 0;
  } else if (score >= 2) {
   re->shaderRGBA[0] = re->shaderRGBA[2] = 0;
  }

 }
 if (c < 0.25)
  re->shaderRGBA[3] = 0xff * 4 * c;
 else
  re->shaderRGBA[3] = 0xff;

 re->radius = NUMBER_SIZE / 2;

 VectorCopy(le->pos.trBase, origin);
 origin[2] += 110 - c * 100;

 VectorSubtract(cg.refdef.vieworg, origin, dir);
 CrossProduct(dir, up, vec);
 VectorNormalize(vec);

 VectorMA(origin, -10 + 20 * sin(c * 2 * M_PI), vec, origin);



 VectorSubtract( origin, cg.refdef.vieworg, delta );
 len = VectorLength( delta );
 if ( len < 20 ) {
  CG_FreeLocalEntity( le );
  return;
 }

 negative = qfalse;
 if (score < 0) {
  negative = qtrue;
  score = -score;
 }

 for (numdigits = 0; !(numdigits && !score); numdigits++) {
  digits[numdigits] = score % 10;
  score = score / 10;
 }

 if (negative) {
  digits[numdigits] = 10;
  numdigits++;
 }

 for (i = 0; i < numdigits; i++) {
  VectorMA(origin, (float) (((float) numdigits / 2) - i) * NUMBER_SIZE, vec, re->origin);
  re->customShader = cgs.media.numberShaders[digits[numdigits-1-i]];
  trap_R_AddRefEntityToScene( re );
 }
}
