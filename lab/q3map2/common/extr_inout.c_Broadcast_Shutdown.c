
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Net_Disconnect (int *) ;
 int Sys_Printf (char*) ;
 int * brdcst_socket ;

void Broadcast_Shutdown(){
 if ( brdcst_socket ) {
  Sys_Printf( "Disconnecting\n" );
  Net_Disconnect( brdcst_socket );
  brdcst_socket = ((void*)0);
 }
}
