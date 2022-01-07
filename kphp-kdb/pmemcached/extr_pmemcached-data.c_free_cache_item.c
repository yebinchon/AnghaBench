
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_len; scalar_t__ data; } ;
struct entry {int key_len; scalar_t__ key; TYPE_1__ data; scalar_t__ allocated_here; } ;


 int cache_size ;
 int zzfree (scalar_t__,int) ;

void free_cache_item (struct entry *entry) {
  if (entry->key) {
    zzfree (entry->key, entry->key_len * sizeof (char));
    cache_size -= entry->key_len * sizeof (char);
    if (entry->allocated_here) {
      zzfree (entry->data.data, entry->data.data_len + 1);
      entry->allocated_here = 0;
      cache_size -= entry->data.data_len + 1;
    }
  }
  entry->key = 0;
}
