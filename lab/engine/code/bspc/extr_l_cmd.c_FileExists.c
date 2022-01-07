
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;

qboolean FileExists (char *filename)
{
 FILE *f;

 f = fopen (filename, "r");
 if (!f)
  return 0;
 fclose (f);
 return 1;
}
