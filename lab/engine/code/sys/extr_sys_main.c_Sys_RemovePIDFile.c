
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* Sys_PIDFileName (char const*) ;
 int remove (char*) ;

void Sys_RemovePIDFile( const char *gamedir )
{
 char *pidFile = Sys_PIDFileName( gamedir );

 if( pidFile != ((void*)0) )
  remove( pidFile );
}
