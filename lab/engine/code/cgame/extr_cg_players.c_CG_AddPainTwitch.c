
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_5__ {int painTime; scalar_t__ painDirection; } ;
struct TYPE_6__ {TYPE_1__ pe; } ;
typedef TYPE_2__ centity_t ;
struct TYPE_7__ {int time; } ;


 int PAIN_TWITCH_TIME ;
 size_t ROLL ;
 TYPE_3__ cg ;

__attribute__((used)) static void CG_AddPainTwitch( centity_t *cent, vec3_t torsoAngles ) {
 int t;
 float f;

 t = cg.time - cent->pe.painTime;
 if ( t >= PAIN_TWITCH_TIME ) {
  return;
 }

 f = 1.0 - (float)t / PAIN_TWITCH_TIME;

 if ( cent->pe.painDirection ) {
  torsoAngles[ROLL] += 20 * f;
 } else {
  torsoAngles[ROLL] -= 20 * f;
 }
}
