
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int normal; } ;
struct TYPE_10__ {TYPE_2__ plane; int endpos; } ;
typedef TYPE_3__ trace_t ;
struct TYPE_11__ {scalar_t__ leMarkType; } ;
typedef TYPE_4__ localEntity_t ;
struct TYPE_8__ {int burnMarkShader; int bloodMarkShader; } ;
struct TYPE_12__ {TYPE_1__ media; } ;


 int CG_ImpactMark (int ,int ,int ,int,int,int,int,int,int ,int,int ) ;
 scalar_t__ LEMT_BLOOD ;
 scalar_t__ LEMT_BURN ;
 scalar_t__ LEMT_NONE ;
 TYPE_5__ cgs ;
 int qfalse ;
 int qtrue ;
 int rand () ;
 int random () ;

void CG_FragmentBounceMark( localEntity_t *le, trace_t *trace ) {
 int radius;

 if ( le->leMarkType == LEMT_BLOOD ) {

  radius = 16 + (rand()&31);
  CG_ImpactMark( cgs.media.bloodMarkShader, trace->endpos, trace->plane.normal, random()*360,
   1,1,1,1, qtrue, radius, qfalse );
 } else if ( le->leMarkType == LEMT_BURN ) {

  radius = 8 + (rand()&15);
  CG_ImpactMark( cgs.media.burnMarkShader, trace->endpos, trace->plane.normal, random()*360,
   1,1,1,1, qtrue, radius, qfalse );
 }




 le->leMarkType = LEMT_NONE;
}
