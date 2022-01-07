
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CL_GetPing (int,char*,int,int*) ;

__attribute__((used)) static void LAN_GetPing( int n, char *buf, int buflen, int *pingtime ) {
 CL_GetPing( n, buf, buflen, pingtime );
}
