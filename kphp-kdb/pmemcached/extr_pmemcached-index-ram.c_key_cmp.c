
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_entry {int key_len; int data; int key; } ;
struct hash_entry {int key_len; int data; int key; } ;


 int assert (struct index_entry*) ;
 int hash_count ;
 struct index_entry* index_get_by_idx (int) ;
 int index_size ;
 int mystrcmp (int ,int ,int ,int ) ;
 struct index_entry** p ;

int key_cmp (int a, int b) {
  if (a == hash_count) return 1;
  if (b == index_size) return -1;



  struct hash_entry *e1 = p[a];
  assert (e1);
  struct index_entry *e2 = index_get_by_idx (b);
  assert (e2);

  return mystrcmp (e1->key, e1->key_len, e2->data, e2->key_len);
}
