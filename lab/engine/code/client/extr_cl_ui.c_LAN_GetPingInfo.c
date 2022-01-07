
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CL_GetPingInfo (int,char*,int) ;

__attribute__((used)) static void LAN_GetPingInfo( int n, char *buf, int buflen ) {
 CL_GetPingInfo( n, buf, buflen );
}
