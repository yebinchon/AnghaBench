
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int key; int key_len; } ;


 int key_cmp (int ,int ,int ,int ) ;

int item_cmp (const struct item *L, const struct item *R) {
  if (L == R) { return 0; }


  return key_cmp (L->key_len, L->key, R->key_len, R->key);
}
