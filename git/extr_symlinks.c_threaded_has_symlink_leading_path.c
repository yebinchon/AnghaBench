
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_def {int dummy; } ;


 int FL_DIR ;
 int FL_SYMLINK ;
 int USE_ONLY_LSTAT ;
 int lstat_cache (struct cache_def*,char const*,int,int,int ) ;

int threaded_has_symlink_leading_path(struct cache_def *cache, const char *name, int len)
{
 return lstat_cache(cache, name, len, FL_SYMLINK|FL_DIR, USE_ONLY_LSTAT) & FL_SYMLINK;
}
