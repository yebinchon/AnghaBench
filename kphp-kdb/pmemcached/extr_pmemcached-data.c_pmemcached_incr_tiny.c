
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_pmemcached_incr_tiny {scalar_t__ type; int key_len; int key; } ;


 int cache_load (int ,int ,int ) ;
 int pmemcached_incr_current (char) ;

int pmemcached_incr_tiny (struct lev_pmemcached_incr_tiny *E) {
  cache_load (E->key, E->key_len, 0);
  return pmemcached_incr_current ((signed char)E->type);
}
