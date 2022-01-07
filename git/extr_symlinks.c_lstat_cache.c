
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_def {int dummy; } ;


 int lstat_cache_matchlen (struct cache_def*,char const*,int,int*,int,int) ;

__attribute__((used)) static int lstat_cache(struct cache_def *cache, const char *name, int len,
         int track_flags, int prefix_len_stat_func)
{
 int flags;
 (void)lstat_cache_matchlen(cache, name, len, &flags, track_flags,
   prefix_len_stat_func);
 return flags;
}
