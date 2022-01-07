
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_pmemcached_delete {int key_len; int key; } ;


 int cache_load (int ,int ,int ) ;
 int pmemcached_delete_current () ;

int pmemcached_delete (struct lev_pmemcached_delete *E) {
  cache_load (E->key, E->key_len, 0);
  return pmemcached_delete_current ();
}
