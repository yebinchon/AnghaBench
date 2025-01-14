
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_13__ {float eyeZ; float fadeTime; float drawIntensity; void* visible; int windowY; int windowX; } ;
typedef TYPE_4__ flare_t ;
struct TYPE_12__ {float time; } ;
struct TYPE_11__ {int* projectionMatrix; } ;
struct TYPE_10__ {int c_flareTests; } ;
struct TYPE_17__ {TYPE_3__ refdef; TYPE_2__ viewParms; TYPE_1__ pc; } ;
struct TYPE_16__ {int * currentFBO; void* finishCalled; } ;
struct TYPE_15__ {float value; } ;
struct TYPE_14__ {int * msaaResolveFbo; } ;
typedef int FBO_t ;


 int FBO_Bind (int *) ;
 int GL_DEPTH_COMPONENT ;
 int GL_FLOAT ;
 TYPE_8__ backEnd ;
 TYPE_7__ glState ;
 void* qfalse ;
 int qglReadPixels (int ,int ,int,int,int ,int ,float*) ;
 void* qtrue ;
 TYPE_6__* r_flareFade ;
 TYPE_5__ tr ;

void RB_TestFlare( flare_t *f ) {
 float depth;
 qboolean visible;
 float fade;
 float screenZ;
 FBO_t *oldFbo;

 backEnd.pc.c_flareTests++;



 glState.finishCalled = qfalse;


 oldFbo = glState.currentFBO;
 if (tr.msaaResolveFbo)
 {
  FBO_Bind(tr.msaaResolveFbo);
 }


 qglReadPixels( f->windowX, f->windowY, 1, 1, GL_DEPTH_COMPONENT, GL_FLOAT, &depth );


 if (tr.msaaResolveFbo)
 {
  FBO_Bind(oldFbo);
 }

 screenZ = backEnd.viewParms.projectionMatrix[14] /
  ( ( 2*depth - 1 ) * backEnd.viewParms.projectionMatrix[11] - backEnd.viewParms.projectionMatrix[10] );

 visible = ( -f->eyeZ - -screenZ ) < 24;

 if ( visible ) {
  if ( !f->visible ) {
   f->visible = qtrue;
   f->fadeTime = backEnd.refdef.time - 1;
  }
  fade = ( ( backEnd.refdef.time - f->fadeTime ) /1000.0f ) * r_flareFade->value;
 } else {
  if ( f->visible ) {
   f->visible = qfalse;
   f->fadeTime = backEnd.refdef.time - 1;
  }
  fade = 1.0f - ( ( backEnd.refdef.time - f->fadeTime ) / 1000.0f ) * r_flareFade->value;
 }

 if ( fade < 0 ) {
  fade = 0;
 }
 if ( fade > 1 ) {
  fade = 1;
 }

 f->drawIntensity = fade;
}
