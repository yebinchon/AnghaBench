
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ sfxHandle_t ;
struct TYPE_2__ {int (* StartLocalSound ) (scalar_t__,int ) ;scalar_t__ (* RegisterSound ) (int ,int ) ;} ;


 int CHAN_LOCAL_SOUND ;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Com_Printf (char*) ;
 int qfalse ;
 TYPE_1__ si ;
 scalar_t__ stub1 (int ,int ) ;
 int stub2 (scalar_t__,int ) ;

void S_Play_f( void ) {
 int i;
 int c;
 sfxHandle_t h;

 if( !si.RegisterSound || !si.StartLocalSound ) {
  return;
 }

 c = Cmd_Argc();

 if( c < 2 ) {
  Com_Printf ("Usage: play <sound filename> [sound filename] [sound filename] ...\n");
  return;
 }

 for( i = 1; i < c; i++ ) {
  h = si.RegisterSound( Cmd_Argv(i), qfalse );

  if( h ) {
   si.StartLocalSound( h, CHAN_LOCAL_SOUND );
  }
 }
}
