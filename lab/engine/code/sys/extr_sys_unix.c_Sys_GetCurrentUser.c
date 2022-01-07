
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_name; } ;


 struct passwd* getpwuid (int ) ;
 int getuid () ;

char *Sys_GetCurrentUser( void )
{
 struct passwd *p;

 if ( (p = getpwuid( getuid() )) == ((void*)0) ) {
  return "player";
 }
 return p->pw_name;
}
