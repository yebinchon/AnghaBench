
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp ;
typedef scalar_t__ qboolean ;


 char* LokiGetHomeDir () ;
 int MAX_OS_PATH ;
 int Q_strcat (char*,int,char*) ;
 int Q_strncat (char*,int,char*,int) ;
 int Q_strncpyz (char*,char*,int) ;
 int X_OK ;
 scalar_t__ access (char*,int ) ;
 char* getenv (char*) ;
 char* homePath ;
 char* installPath ;
 scalar_t__ qfalse ;
 scalar_t__ realpath (char*,char*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

void LokiInitPaths( char *argv0 ){


 strcpy( installPath, "../" );
}
