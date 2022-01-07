
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_4__ {scalar_t__ kill; TYPE_1__* sfx; } ;
struct TYPE_3__ {scalar_t__ soundLength; } ;


 int MAX_GENTITIES ;
 int S_Base_StopLoopingSound (int) ;
 TYPE_2__* loopSounds ;
 scalar_t__ numLoopChannels ;
 scalar_t__ qtrue ;

void S_Base_ClearLoopingSounds( qboolean killall ) {
 int i;
 for ( i = 0 ; i < MAX_GENTITIES ; i++) {
  if (killall || loopSounds[i].kill == qtrue || (loopSounds[i].sfx && loopSounds[i].sfx->soundLength == 0)) {
   S_Base_StopLoopingSound(i);
  }
 }
 numLoopChannels = 0;
}
