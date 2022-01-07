
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mtime; } ;


 int stat (char*,struct stat*) ;

int Sys_FileTime( char *path )
{
 struct stat buf;

 if (stat (path,&buf) == -1)
  return -1;

 return buf.st_mtime;
}
