
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fopen (char const*,char const*) ;
 int warn_on_fopen_errors (char const*) ;

FILE *fopen_or_warn(const char *path, const char *mode)
{
 FILE *fp = fopen(path, mode);

 if (fp)
  return fp;

 warn_on_fopen_errors(path);
 return ((void*)0);
}
