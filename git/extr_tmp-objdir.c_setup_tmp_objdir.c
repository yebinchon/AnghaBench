
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int mkdir (char*,int) ;
 char* xstrfmt (char*,char const*) ;

__attribute__((used)) static int setup_tmp_objdir(const char *root)
{
 char *path;
 int ret = 0;

 path = xstrfmt("%s/pack", root);
 ret = mkdir(path, 0777);
 free(path);

 return ret;
}
