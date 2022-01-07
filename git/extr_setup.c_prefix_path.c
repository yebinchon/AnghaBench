
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int die (int ,char const*) ;
 char* prefix_path_gently (char const*,int,int *,char const*) ;

char *prefix_path(const char *prefix, int len, const char *path)
{
 char *r = prefix_path_gently(prefix, len, ((void*)0), path);
 if (!r)
  die(_("'%s' is outside repository"), path);
 return r;
}
