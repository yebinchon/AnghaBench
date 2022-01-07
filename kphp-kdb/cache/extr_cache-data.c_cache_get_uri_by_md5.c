
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cache_uri {struct cache_uri* hnext; } ;
struct TYPE_4__ {int* h; } ;
typedef TYPE_1__ md5_t ;


 struct cache_uri** H ;
 int assert (int) ;
 scalar_t__ cache_uri_match_md5 (struct cache_uri*,TYPE_1__*,int) ;
 int uri_hash_prime ;

struct cache_uri *cache_get_uri_by_md5 (md5_t *uri_md5, int len) {
  assert (len == 8 || len == 16);
  const int h = uri_md5->h[0] % uri_hash_prime;
  struct cache_uri **p = H + h, *V;
  while (*p) {
    V = *p;
    if (cache_uri_match_md5 (V, uri_md5, len)) {
      *p = V->hnext;
      V->hnext = H[h];
      H[h] = V;
      return V;
    }
    p = &V->hnext;
  }
  return ((void*)0);
}
