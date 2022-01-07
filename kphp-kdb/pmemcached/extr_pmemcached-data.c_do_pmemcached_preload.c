
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cache_load (char const*,int,int) ;

int do_pmemcached_preload (const char *key, int key_len, int forceload) {
  int x = cache_load (key, key_len, forceload);



  return x;
}
