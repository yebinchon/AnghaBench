
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CL_ServerStatus (char*,char*,int) ;

int LAN_GetServerStatus( char *serverAddress, char *serverStatus, int maxLen ) {
 return CL_ServerStatus( serverAddress, serverStatus, maxLen );
}
