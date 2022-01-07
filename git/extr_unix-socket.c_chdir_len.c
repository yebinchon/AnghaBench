
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chdir (char*) ;
 int free (char*) ;
 char* xmemdupz (char const*,int) ;

__attribute__((used)) static int chdir_len(const char *orig, int len)
{
 char *path = xmemdupz(orig, len);
 int r = chdir(path);
 free(path);
 return r;
}
