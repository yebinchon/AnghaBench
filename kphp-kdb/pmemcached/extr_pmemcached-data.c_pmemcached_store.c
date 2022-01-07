
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_pmemcached_store {int type; int delay; int flags; int data_len; scalar_t__ key_len; scalar_t__ data; } ;


 int cache_load (scalar_t__,scalar_t__,int ) ;
 int pmemcached_store_current (int,scalar_t__,int ,int ,int ) ;

int pmemcached_store (struct lev_pmemcached_store *E) {
  cache_load (E->data, E->key_len, 0);
  return pmemcached_store_current (E->type & 3, E->data+E->key_len, E->data_len, E->flags, E->delay);
}
