
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {int size; scalar_t__ data; } ;


 scalar_t__ strlen (scalar_t__) ;
 scalar_t__ uri_off ;

long long cache_uri_get_size (const struct cache_uri *U) {
  if (U->size == -1) {
    return -1LL;
  }
  if (U->size & 0x80000000) {
    return U->size & 0x7fffffff;
  }
  long long res = U->size & 0xffffff;
  const int n = U->size >> 24;
  int i, s = 24;
  unsigned char *r = (unsigned char *) (U->data + (uri_off + strlen (U->data + uri_off) + 1));
  for (i = 0; i < n; i++) {
    const long long u = *r++;
    res |= u << s;
    s += 8;
  }
  return res;
}
