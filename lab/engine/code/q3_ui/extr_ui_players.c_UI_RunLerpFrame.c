
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int playerInfo_t ;
struct TYPE_5__ {int animationNumber; scalar_t__ frameTime; int oldFrame; int frame; scalar_t__ oldFrameTime; scalar_t__ animationTime; double backlerp; TYPE_2__* animation; } ;
typedef TYPE_1__ lerpFrame_t ;
struct TYPE_6__ {int frameLerp; int numFrames; int loopFrames; int firstFrame; scalar_t__ flipflop; scalar_t__ reversed; } ;
typedef TYPE_2__ animation_t ;


 int UI_SetLerpFrameAnimation (int *,TYPE_1__*,int) ;
 scalar_t__ dp_realtime ;

__attribute__((used)) static void UI_RunLerpFrame( playerInfo_t *ci, lerpFrame_t *lf, int newAnimation ) {
 int f, numFrames;
 animation_t *anim;


 if ( newAnimation != lf->animationNumber || !lf->animation ) {
  UI_SetLerpFrameAnimation( ci, lf, newAnimation );
 }



 if ( dp_realtime >= lf->frameTime ) {
  lf->oldFrame = lf->frame;
  lf->oldFrameTime = lf->frameTime;


  anim = lf->animation;
  if ( !anim->frameLerp ) {
   return;
  }
  if ( dp_realtime < lf->animationTime ) {
   lf->frameTime = lf->animationTime;
  } else {
   lf->frameTime = lf->oldFrameTime + anim->frameLerp;
  }
  f = ( lf->frameTime - lf->animationTime ) / anim->frameLerp;

  numFrames = anim->numFrames;
  if (anim->flipflop) {
   numFrames *= 2;
  }
  if ( f >= numFrames ) {
   f -= numFrames;
   if ( anim->loopFrames ) {
    f %= anim->loopFrames;
    f += anim->numFrames - anim->loopFrames;
   } else {
    f = numFrames - 1;


    lf->frameTime = dp_realtime;
   }
  }
  if ( anim->reversed ) {
   lf->frame = anim->firstFrame + anim->numFrames - 1 - f;
  }
  else if (anim->flipflop && f>=anim->numFrames) {
   lf->frame = anim->firstFrame + anim->numFrames - 1 - (f%anim->numFrames);
  }
  else {
   lf->frame = anim->firstFrame + f;
  }
  if ( dp_realtime > lf->frameTime ) {
   lf->frameTime = dp_realtime;
  }
 }

 if ( lf->frameTime > dp_realtime + 200 ) {
  lf->frameTime = dp_realtime;
 }

 if ( lf->oldFrameTime > dp_realtime ) {
  lf->oldFrameTime = dp_realtime;
 }

 if ( lf->frameTime == lf->oldFrameTime ) {
  lf->backlerp = 0;
 } else {
  lf->backlerp = 1.0 - (float)( dp_realtime - lf->oldFrameTime ) / ( lf->frameTime - lf->oldFrameTime );
 }
}
