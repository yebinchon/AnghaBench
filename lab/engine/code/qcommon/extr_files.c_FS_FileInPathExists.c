
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int FILE ;


 int * Sys_FOpen (char const*,char*) ;
 int fclose (int *) ;
 int qfalse ;
 int qtrue ;

qboolean FS_FileInPathExists(const char *testpath)
{
 FILE *filep;

 filep = Sys_FOpen(testpath, "rb");

 if(filep)
 {
  fclose(filep);
  return qtrue;
 }

 return qfalse;
}
