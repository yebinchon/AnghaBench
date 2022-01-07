
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_RemoveCommand (char*) ;
 int SNDDMA_Shutdown () ;
 int SND_shutdown () ;
 scalar_t__ s_numSfx ;
 scalar_t__ s_soundStarted ;

void S_Base_Shutdown( void ) {
 if ( !s_soundStarted ) {
  return;
 }

 SNDDMA_Shutdown();
 SND_shutdown();

 s_soundStarted = 0;
 s_numSfx = 0;

 Cmd_RemoveCommand("s_info");
}
