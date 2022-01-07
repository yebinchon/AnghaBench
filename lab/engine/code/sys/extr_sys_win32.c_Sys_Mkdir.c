
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int CreateDirectory (char const*,int *) ;
 scalar_t__ ERROR_ALREADY_EXISTS ;
 scalar_t__ GetLastError () ;
 int qfalse ;
 int qtrue ;

qboolean Sys_Mkdir( const char *path )
{
 if( !CreateDirectory( path, ((void*)0) ) )
 {
  if( GetLastError( ) != ERROR_ALREADY_EXISTS )
   return qfalse;
 }

 return qtrue;
}
