
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int key_len; int data_len; int timestamp; scalar_t__ key; scalar_t__ data; } ;
typedef TYPE_1__ hash_entry_t ;


 int assert (TYPE_1__*) ;
 int debug_dump_hash_entry (TYPE_1__*) ;
 int del_entry_time (TYPE_1__*) ;
 int entry_memory ;
 int fprintf (int ,char*,TYPE_1__*) ;
 int free_entry (TYPE_1__*) ;
 int stderr ;
 int tree ;
 int tree_delete (int ,TYPE_1__*) ;
 int verbosity ;
 int zzfree (scalar_t__,int) ;

void del_entry (hash_entry_t *entry) {
  assert (entry);
  if (verbosity >= 4) {
    fprintf(stderr, "deleted %p\n", entry);
    debug_dump_hash_entry (entry);
  }

  del_entry_time (entry);

  tree = tree_delete (tree, entry);

  zzfree (entry->key, entry->key_len + 1);
  zzfree (entry->data, entry->data_len + 1);
  entry_memory -= entry->key_len + entry->data_len + 2;

  entry->key = 0;
  entry->key_len = -1;
  entry->timestamp = -1;

  free_entry (entry);
}
