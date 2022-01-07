
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_pmemcached_get {int key_len; int key; } ;
struct data {int dummy; } ;


 int cache_load (int ,int ,int ) ;
 struct data pmemcached_get_current () ;

struct data pmemcached_get (struct lev_pmemcached_get *E) {
  cache_load (E->key, E->key_len, 0);
  return pmemcached_get_current ();
}
