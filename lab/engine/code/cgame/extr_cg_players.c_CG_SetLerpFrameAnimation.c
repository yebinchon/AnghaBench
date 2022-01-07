
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int animationNumber; scalar_t__ frameTime; scalar_t__ animationTime; TYPE_3__* animation; } ;
typedef TYPE_1__ lerpFrame_t ;
struct TYPE_8__ {TYPE_3__* animations; } ;
typedef TYPE_2__ clientInfo_t ;
struct TYPE_9__ {scalar_t__ initialLerp; } ;
typedef TYPE_3__ animation_t ;
struct TYPE_10__ {scalar_t__ integer; } ;


 int ANIM_TOGGLEBIT ;
 int CG_Error (char*,int) ;
 int CG_Printf (char*,int) ;
 int MAX_TOTALANIMATIONS ;
 TYPE_4__ cg_debugAnim ;

__attribute__((used)) static void CG_SetLerpFrameAnimation( clientInfo_t *ci, lerpFrame_t *lf, int newAnimation ) {
 animation_t *anim;

 lf->animationNumber = newAnimation;
 newAnimation &= ~ANIM_TOGGLEBIT;

 if ( newAnimation < 0 || newAnimation >= MAX_TOTALANIMATIONS ) {
  CG_Error( "Bad animation number: %i", newAnimation );
 }

 anim = &ci->animations[ newAnimation ];

 lf->animation = anim;
 lf->animationTime = lf->frameTime + anim->initialLerp;

 if ( cg_debugAnim.integer ) {
  CG_Printf( "Anim: %i\n", newAnimation );
 }
}
