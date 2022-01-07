
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_4__ {int legsAnim; } ;
struct TYPE_5__ {scalar_t__* lerpOrigin; TYPE_1__ currentState; } ;
typedef TYPE_2__ centity_t ;


 int ANIM_TOGGLEBIT ;
 int CG_PointContents (scalar_t__*,int) ;
 int CROUCH_VIEWHEIGHT ;
 int DEFAULT_VIEWHEIGHT ;
 int LEGS_IDLECR ;
 int LEGS_WALKCR ;
 int MASK_WATER ;
 int MINS_Z ;

int CG_WaterLevel(centity_t *cent) {
 vec3_t point;
 int contents, sample1, sample2, anim, waterlevel;
 int viewheight;

 anim = cent->currentState.legsAnim & ~ANIM_TOGGLEBIT;

 if (anim == LEGS_WALKCR || anim == LEGS_IDLECR) {
  viewheight = CROUCH_VIEWHEIGHT;
 } else {
  viewheight = DEFAULT_VIEWHEIGHT;
 }




 waterlevel = 0;

 point[0] = cent->lerpOrigin[0];
 point[1] = cent->lerpOrigin[1];
 point[2] = cent->lerpOrigin[2] + MINS_Z + 1;
 contents = CG_PointContents(point, -1);

 if (contents & MASK_WATER) {
  sample2 = viewheight - MINS_Z;
  sample1 = sample2 / 2;
  waterlevel = 1;
  point[2] = cent->lerpOrigin[2] + MINS_Z + sample1;
  contents = CG_PointContents(point, -1);

  if (contents & MASK_WATER) {
   waterlevel = 2;
   point[2] = cent->lerpOrigin[2] + MINS_Z + sample2;
   contents = CG_PointContents(point, -1);

   if (contents & MASK_WATER) {
    waterlevel = 3;
   }
  }
 }

 return waterlevel;
}
