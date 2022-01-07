
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int key_len; int key; } ;


 struct entry __tmp ;
 int create_new_cache_item (struct entry*,char const*,int) ;
 int fprintf (int ,char*) ;
 int free_cache_item (struct entry*) ;
 int memcmp (char const*,int ,int) ;
 int stderr ;
 int verbosity ;

struct entry *get_cache_item_simple (const char *key, int key_len) {
  if (verbosity >= 4) { fprintf (stderr, "get_cache_item_simple\n"); }
  if (key_len >= 0 && key_len == __tmp.key_len && !memcmp (key, __tmp.key, key_len)) {
    return &__tmp;
  } else {
    free_cache_item (&__tmp);
    create_new_cache_item (&__tmp, key, key_len);
    return &__tmp;
  }
}
