
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* kill; void* active; } ;


 TYPE_1__* loopSounds ;
 void* qfalse ;

void S_Base_StopLoopingSound(int entityNum) {
 loopSounds[entityNum].active = qfalse;

 loopSounds[entityNum].kill = qfalse;
}
