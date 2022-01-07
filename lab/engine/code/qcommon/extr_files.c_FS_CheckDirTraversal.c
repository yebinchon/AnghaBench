
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int qfalse ;
 int qtrue ;
 scalar_t__ strstr (char const*,char*) ;

qboolean FS_CheckDirTraversal(const char *checkdir)
{
 if(strstr(checkdir, "../") || strstr(checkdir, "..\\"))
  return qtrue;

 return qfalse;
}
