
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key_len; int key; } ;
typedef TYPE_1__ hash_entry_t ;


 int mystrcmp (int ,int ,int ,int ) ;

int node_cmp (hash_entry_t *x, hash_entry_t *y) {
  return mystrcmp (x->key, x->key_len, y->key, y->key_len);
}
