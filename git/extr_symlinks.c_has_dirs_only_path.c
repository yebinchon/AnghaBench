
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int default_cache ;
 int threaded_has_dirs_only_path (int *,char const*,int,int) ;

int has_dirs_only_path(const char *name, int len, int prefix_len)
{
 return threaded_has_dirs_only_path(&default_cache, name, len, prefix_len);
}
