
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_def {scalar_t__ flags; int path; } ;


 int strbuf_reset (int *) ;

__attribute__((used)) static inline void reset_lstat_cache(struct cache_def *cache)
{
 strbuf_reset(&cache->path);
 cache->flags = 0;




}
