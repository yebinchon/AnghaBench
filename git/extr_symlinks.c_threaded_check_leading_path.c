
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_def {int dummy; } ;


 int FL_DIR ;
 int FL_NOENT ;
 int FL_SYMLINK ;
 int USE_ONLY_LSTAT ;
 int lstat_cache_matchlen (struct cache_def*,char const*,int,int*,int,int ) ;

__attribute__((used)) static int threaded_check_leading_path(struct cache_def *cache, const char *name, int len)
{
 int flags;
 int match_len = lstat_cache_matchlen(cache, name, len, &flags,
      FL_SYMLINK|FL_NOENT|FL_DIR, USE_ONLY_LSTAT);
 if (flags & FL_NOENT)
  return 0;
 else if (flags & FL_DIR)
  return -1;
 else
  return match_len;
}
