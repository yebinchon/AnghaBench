
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int key_len; scalar_t__ value_len; int time; } ;


 int NODE_TYPE_PLUS ;
 int NODE_TYPE_SURE ;
 int NODE_TYPE_UNSURE ;
 struct item* alloc_item (int,int*,int,int ) ;
 int assert (int) ;
 int change_value (struct item*,int,int*) ;
 int delay_op (struct item*,int,void*) ;
 int delete_time (struct item*) ;
 int insert_time (struct item*) ;
 int now ;
 struct item* preload_key (int,int*,int ) ;

int store (int E_size, void *E, int key_len, int *key, int value_len, int *value, int delay, int mode) {
  assert (key_len >= 0 && key_len <= 255);
  assert (value_len >= 0 && value_len <= (1 << 20));
  assert (mode >= 1 && mode <= 3);

  if (delay <= now && delay > 0) {
    return 0;
  }

  struct item *I = preload_key (key_len, key, 0);
  if (I->key_len == -3 && mode != 3) {
    delay_op (I, E_size, E);
    return 1;
  }


  if (I->key_len >= 0 && I->value_len >= 0) {
    if (!(mode & 2)) { return 0; }
    delete_time (I);
    change_value (I, value_len, value);
    I->time = delay;
    insert_time (I);
    return 1;
  } else {
    if (!(mode & 1)) { return 0; }
    delete_time (I);
    if (I->key_len >= 0) {
      change_value (I, value_len, value);
      I->time = delay;
      insert_time (I);
      return 1;
    } else {
      struct item *II = alloc_item (key_len, key, NODE_TYPE_PLUS | (I->key_len == -3 ? NODE_TYPE_UNSURE : NODE_TYPE_SURE), 0);
      change_value (II, value_len, value);
      II->time = delay;
      insert_time (II);
      return 1;
    }
  }
}
