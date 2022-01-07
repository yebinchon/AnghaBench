
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_cache_access_short {scalar_t__ data; } ;
struct cache_uri {int dummy; } ;
typedef int md5_t ;


 struct cache_uri* cache_get_uri_by_md5 (int *,int) ;
 int uri_access (struct cache_uri*,int) ;

__attribute__((used)) static void cache_access_short (struct lev_cache_access_short *E, int t) {
  struct cache_uri *U = cache_get_uri_by_md5 ((md5_t *) E->data, 8);
  uri_access (U, t);
}
