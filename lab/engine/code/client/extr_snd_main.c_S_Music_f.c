
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* StartBackgroundTrack ) (int *,int *) ;} ;


 int Cmd_Argc () ;
 int * Cmd_Argv (int) ;
 int Com_Printf (char*) ;
 TYPE_1__ si ;
 int stub1 (int *,int *) ;
 int stub2 (int *,int *) ;

void S_Music_f( void ) {
 int c;

 if( !si.StartBackgroundTrack ) {
  return;
 }

 c = Cmd_Argc();

 if ( c == 2 ) {
  si.StartBackgroundTrack( Cmd_Argv(1), ((void*)0) );
 } else if ( c == 3 ) {
  si.StartBackgroundTrack( Cmd_Argv(1), Cmd_Argv(2) );
 } else {
  Com_Printf ("Usage: music <musicfile> [loopfile]\n");
  return;
 }

}
