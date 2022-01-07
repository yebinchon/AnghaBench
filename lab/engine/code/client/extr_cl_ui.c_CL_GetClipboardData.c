
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_strncpyz (char*,char*,int) ;
 char* Sys_GetClipboardData () ;
 int Z_Free (char*) ;

__attribute__((used)) static void CL_GetClipboardData( char *buf, int buflen ) {
 char *cbd;

 cbd = Sys_GetClipboardData();

 if ( !cbd ) {
  *buf = 0;
  return;
 }

 Q_strncpyz( buf, cbd, buflen );

 Z_Free( cbd );
}
