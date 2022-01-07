
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_entry {int key_len; int data; } ;


 struct index_entry empty_index_entry ;
 int fprintf (int ,char*,int,...) ;
 int * index_binary_data ;
 size_t* index_offset ;
 int index_size ;
 scalar_t__ min (int,int) ;
 int mystrcmp2 (int ,int ,char const*,int,scalar_t__) ;
 int stderr ;
 int verbosity ;

struct index_entry* index_get_next (const char *key, int key_len) {
  int l = -1;
  int r = index_size;
  int lc = 1;
  int rc = 1;
  while (r-l > 1) {
    int x = (r+l)>>1;
    struct index_entry *entry = (struct index_entry *)&index_binary_data[index_offset[x]];
    int c = (mystrcmp2 (entry->data, entry->key_len, key, key_len, min (lc, rc) - 1));
    if (c < 0) {
      l = x;
      lc = -c;
    } else if (c > 0) {
      r = x;
      rc = c;
    } else {
      l = x;
      break;
    }
  }
  if (verbosity>=4) {
    fprintf (stderr, "(l,r) = (%d,%d)\n", l, r);
    fprintf (stderr, "index_size = %d\n", index_size);
  }
  l++;
  if (l < index_size) {
    struct index_entry *entry = (struct index_entry *)&index_binary_data[index_offset[l]];
    return entry;
  }
  return &empty_index_entry;
}
