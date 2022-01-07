
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int FILE ;


 int fclose (int *) ;
 int * myfopen (char const*,char*) ;
 int qfalse ;
 int qtrue ;

qboolean FileExists (const char *filename)
{
 FILE *f;

 f = myfopen (filename, "r");
 if (!f)
  return qfalse;
 fclose (f);
 return qtrue;
}
