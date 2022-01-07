
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_Base_StopAllSounds () ;
 int qtrue ;
 int s_soundMuted ;

void S_Base_DisableSounds( void ) {
 S_Base_StopAllSounds();
 s_soundMuted = qtrue;
}
