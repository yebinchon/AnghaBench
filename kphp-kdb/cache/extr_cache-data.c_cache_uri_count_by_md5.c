
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cache_uri {struct cache_uri* hnext; } ;
struct TYPE_4__ {int* h; } ;
typedef TYPE_1__ md5_t ;


 struct cache_uri** H ;
 scalar_t__ cache_uri_match_md5 (struct cache_uri*,TYPE_1__ const*,int) ;
 int uri_hash_prime ;

__attribute__((used)) static int cache_uri_count_by_md5 (const md5_t *uri_md5, int len) {
  const int h = uri_md5->h[0] % uri_hash_prime;
  struct cache_uri *V;
  int cnt = 0;
  for (V = H[h]; V != ((void*)0); V = V->hnext) {
    if (cache_uri_match_md5 (V, uri_md5, len)) {
      if (++cnt > 1) {
        return cnt;
      }
    }
  }
  return cnt;
}
