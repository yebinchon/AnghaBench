
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ EPERM ;
 scalar_t__ errno ;
 int * fopen (char const*,char*) ;
 int unlink (char const*) ;

FILE *fopen_for_writing(const char *path)
{
 FILE *ret = fopen(path, "w");

 if (!ret && errno == EPERM) {
  if (!unlink(path))
   ret = fopen(path, "w");
  else
   errno = EPERM;
 }
 return ret;
}
