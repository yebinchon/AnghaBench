
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int URI_CACHE_MASK ;

inline unsigned compute_uri_cache_slot (const char *const uri) {
  unsigned r = 0;
  const unsigned char *s;
  for (s = (const unsigned char *) uri; *s; s++) {
    r = r * 239U + (*s);
  }
  return r & URI_CACHE_MASK;
}
