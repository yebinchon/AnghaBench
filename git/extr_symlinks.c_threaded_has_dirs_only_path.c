
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_def {int dummy; } ;


 int FL_DIR ;
 int FL_FULLPATH ;
 int lstat_cache (struct cache_def*,char const*,int,int,int) ;

__attribute__((used)) static int threaded_has_dirs_only_path(struct cache_def *cache, const char *name, int len, int prefix_len)
{
 return lstat_cache(cache, name, len,
      FL_DIR|FL_FULLPATH, prefix_len) &
  FL_DIR;
}
