
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WINS_CloseSocket (int ) ;
 int WSACleanup () ;
 int WinPrint (char*) ;
 int net_controlsocket ;

void WINS_Shutdown( void ){

 WINS_CloseSocket( net_controlsocket );
 WSACleanup();

 WinPrint( "Winsock Shutdown\n" );
}
