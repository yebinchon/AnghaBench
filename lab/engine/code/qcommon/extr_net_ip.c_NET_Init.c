
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_AddCommand (char*,int ) ;
 int Com_Printf (char*,...) ;
 int MAKEWORD (int,int) ;
 int NET_Config (int ) ;
 int NET_Restart_f ;
 int WSAStartup (int ,int *) ;
 int qtrue ;
 int winsockInitialized ;
 int winsockdata ;

void NET_Init( void ) {
 NET_Config( qtrue );

 Cmd_AddCommand ("net_restart", NET_Restart_f);
}
