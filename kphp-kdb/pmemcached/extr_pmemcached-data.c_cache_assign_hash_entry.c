
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int key_len; int key; int hash_entry; } ;


 int get_entry (int ,int ) ;

inline void cache_assign_hash_entry ( struct entry *entry) {
  entry->hash_entry = get_entry (entry->key, entry->key_len);
}
