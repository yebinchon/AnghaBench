
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data_len; int delay; } ;
struct TYPE_5__ {scalar_t__ index_entry; int hash_entry; TYPE_1__ data; int key_len; int key; } ;


 int DELAY_INFINITY ;
 int cache_reload (TYPE_2__*) ;
 TYPE_2__* current_cache ;
 int del_entry (int ) ;
 int get_double_time_since_epoch () ;
 int on_value_change (int ,int ) ;
 int pmct_set ;
 int pmemcached_store_current (int ,int ,int,int ,int) ;

int pmemcached_delete_current (void) {
  if (current_cache->data.data_len == -1) {
    return -1;
  }
  on_value_change (current_cache->key, current_cache->key_len);
  int delay = current_cache->data.delay;
  if (current_cache->index_entry != 0) {
    pmemcached_store_current (pmct_set, 0, -1, 0, -1);
  } else {
    del_entry (current_cache->hash_entry);
  }
  cache_reload (current_cache);
  if (delay < get_double_time_since_epoch() && delay != DELAY_INFINITY) {
    return -1;
  }
  return 1;
}
