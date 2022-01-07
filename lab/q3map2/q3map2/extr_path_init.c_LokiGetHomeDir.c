
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_dir; } ;
typedef int buf ;


 char* Q_strncpyz (char*,char*,int) ;
 char* getenv (char*) ;
 scalar_t__ getpwuid_r (int ,struct passwd*,char*,int,struct passwd**) ;
 int getuid () ;

char *LokiGetHomeDir( void ){

 return ((void*)0);
}
