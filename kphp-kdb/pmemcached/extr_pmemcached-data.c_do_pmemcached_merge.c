
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int cache_load (char const*,int,int) ;

void do_pmemcached_merge (const char *key, int key_len) {
  assert(cache_load (key, key_len, 1) != -2);

}
