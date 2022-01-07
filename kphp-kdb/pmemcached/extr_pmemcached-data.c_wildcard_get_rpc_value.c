
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ x; } ;
typedef TYPE_1__ tree_t ;
struct wildcard_entry {int data_len; scalar_t__ data; } ;
struct data {int data_len; int flags; int delay; scalar_t__ data; } ;


 TYPE_1__* tree_lookup (int ,char const*,int) ;
 int wildcard_rpc_cache_tree ;
 int wildcard_update_use (struct wildcard_entry*) ;

struct data wildcard_get_rpc_value (const char *key, int key_len) {
  tree_t *T = tree_lookup (wildcard_rpc_cache_tree, key, key_len);
  struct data data;
  if (!T) {
    data.data_len = -1;
    data.data = 0;
  } else {
    struct wildcard_entry *entry = (struct wildcard_entry *)T->x;
    data.data_len = entry->data_len;
    data.flags = 1;
    data.delay = -1;
    data.data = entry->data;
    wildcard_update_use (entry);
  }
  return data;
}
