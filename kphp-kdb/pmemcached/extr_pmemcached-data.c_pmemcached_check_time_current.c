
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data_len; scalar_t__ delay; } ;
struct TYPE_4__ {int key_len; int key; TYPE_1__ data; } ;


 TYPE_2__* current_cache ;
 int do_pmemcached_delete (int ,int ) ;
 scalar_t__ get_double_time_since_epoch () ;

int pmemcached_check_time_current (void) {
  if (current_cache->data.data_len != -1 && current_cache->data.delay >= 0 && current_cache->data.delay < get_double_time_since_epoch()) {
    return do_pmemcached_delete (current_cache->key, current_cache->key_len);
  }
  return 0;
}
