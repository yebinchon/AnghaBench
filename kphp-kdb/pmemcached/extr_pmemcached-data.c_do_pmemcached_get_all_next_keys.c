
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_entry {int data_len; } ;


 int get_all_next_entries (char const*,int,int,int) ;
 struct index_entry* index_get (char const*,int) ;
 struct index_entry* index_get_next (char const*,int) ;
 struct index_entry* iterator_index_entry ;
 char const* iterator_key ;
 int iterator_prefix_len ;
 int iterator_report (int ) ;

int do_pmemcached_get_all_next_keys (const char *key, int key_len, int prefix_len, int strict) {
  struct index_entry *index_entry = 0;
  iterator_key = key;
  iterator_prefix_len = prefix_len;
  if (!strict) {
    index_entry = index_get (key, key_len);
    if (!index_entry) {
      return -2;
    }
    if (index_entry->data_len == -1) {
      index_entry = 0;
    }
  }
  if (!index_entry) {
    index_entry = index_get_next (key, key_len);
    if (!index_entry) {
      return -2;
    }
  }
  iterator_index_entry = index_entry;
  if (get_all_next_entries (key, key_len, prefix_len, strict) != -2) {
    return iterator_report (0);
  }
  return 0;
}
