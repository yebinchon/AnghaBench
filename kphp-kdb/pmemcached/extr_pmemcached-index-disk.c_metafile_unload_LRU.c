
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MAX_METAFILES ;
 scalar_t__ metafile_unload (int) ;
 int metafiles_unload_LRU ;
 size_t* prev_use ;
 scalar_t__ use_query_fails ;

int metafile_unload_LRU() {
  if (prev_use[MAX_METAFILES] == MAX_METAFILES) {
    return 0;
  }
  use_query_fails = 0;
  int cur = prev_use[MAX_METAFILES];
  while (cur != MAX_METAFILES) {
    if (metafile_unload (cur) == 0) {
      metafiles_unload_LRU++;
      return 1;
    } else {
      use_query_fails ++;
      cur = prev_use [cur];
    }
  }
  return 0;
}
