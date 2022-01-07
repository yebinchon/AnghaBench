
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int soundInterface_t ;
struct TYPE_3__ {int (* Shutdown ) () ;} ;


 int Cmd_RemoveCommand (char*) ;
 int Com_Memset (TYPE_1__*,int ,int) ;
 int S_CodecShutdown () ;
 TYPE_1__ si ;
 int stub1 () ;

void S_Shutdown( void )
{
 if( si.Shutdown ) {
  si.Shutdown( );
 }

 Com_Memset( &si, 0, sizeof( soundInterface_t ) );

 Cmd_RemoveCommand( "play" );
 Cmd_RemoveCommand( "music");
 Cmd_RemoveCommand( "stopmusic");
 Cmd_RemoveCommand( "s_list" );
 Cmd_RemoveCommand( "s_stop" );
 Cmd_RemoveCommand( "s_info" );

 S_CodecShutdown( );
}
