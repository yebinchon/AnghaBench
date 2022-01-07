
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int value_len; int value; } ;


 int NODE_TYPE (struct item*) ;
 int NODE_TYPE_MINUS ;
 int NODE_TYPE_PLUS ;
 int NODE_TYPE_UNSURE ;
 int assert (int) ;
 int change_node_type (struct item*,int) ;
 int items_memory ;
 int memcpy (int ,int*,int) ;
 int zzfree (int ,int) ;
 int zzmalloc (int) ;

void change_value (struct item *I, int value_len, int *value) {
  if (I->value_len >= 0) {
    zzfree (I->value, 4 * I->value_len);
    items_memory -= 4 * I->value_len;
  } else {
    assert (NODE_TYPE (I) == (NODE_TYPE_MINUS | NODE_TYPE_UNSURE));
    change_node_type (I, NODE_TYPE_PLUS | NODE_TYPE_UNSURE);
  }
  I->value_len = value_len;
  I->value = zzmalloc (4 * value_len);
  memcpy (I->value, value, 4 * value_len);
  items_memory += 4 * value_len;
}
