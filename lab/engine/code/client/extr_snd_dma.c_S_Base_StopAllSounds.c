
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_Base_ClearSoundBuffer () ;
 int S_Base_StopBackgroundTrack () ;
 int s_soundStarted ;

void S_Base_StopAllSounds(void) {
 if ( !s_soundStarted ) {
  return;
 }


 S_Base_StopBackgroundTrack();

 S_Base_ClearSoundBuffer ();
}
