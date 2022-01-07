
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_GET_CDKEY ;
 int syscall (int ,char*,int) ;

void trap_GetCDKey( char *buf, int buflen ) {
 syscall( UI_GET_CDKEY, buf, buflen );
}
