
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_entry {int key_len; int data; } ;
struct hash_entry {int key_len; int key; } ;


 int mystrcmp (int ,int ,int ,int ) ;

int key_cmp (struct hash_entry *a, struct index_entry *b) {
  if (a == 0) return 1;
  if (b == 0) return -1;
  return mystrcmp(a->key, a->key_len, b->data, b->key_len);
}
