
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Error (char*,char const*) ;





 int SYS_ERR ;
 int SYS_VRB ;
 int SYS_WRN ;
 int Sys_FPrintf (int ,char*,char const*) ;
 int Sys_Printf (char*,char const*) ;

void PicoPrintFunc( int level, const char *str ){
 if ( str == ((void*)0) ) {
  return;
 }
 switch ( level )
 {
 case 130:
  Sys_Printf( "%s\n", str );
  break;

 case 129:
  Sys_FPrintf( SYS_VRB, "%s\n", str );
  break;

 case 128:
  Sys_FPrintf( SYS_WRN, "WARNING: %s\n", str );
  break;

 case 132:
  Sys_FPrintf( SYS_ERR, "ERROR: %s\n", str );
  break;

 case 131:
  Error( "ERROR: %s\n", str );
  break;
 }
}
