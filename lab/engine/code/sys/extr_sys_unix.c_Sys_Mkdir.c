
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 scalar_t__ EEXIST ;
 scalar_t__ errno ;
 int mkdir (char const*,int) ;
 int qtrue ;

qboolean Sys_Mkdir( const char *path )
{
 int result = mkdir( path, 0750 );

 if( result != 0 )
  return errno == EEXIST;

 return qtrue;
}
