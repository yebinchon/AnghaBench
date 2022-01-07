
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int value_len; int value; } ;


 int NODE_TYPE (struct item*) ;
 int NODE_TYPE_MINUS ;
 int NODE_TYPE_PLUS ;
 int NODE_TYPE_SURE ;
 int NODE_TYPE_UNSURE ;
 int NODE_TYPE_ZERO ;
 int assert (int) ;
 int change_node_type (struct item*,int) ;
 int free_item (struct item*) ;
 int items_memory ;
 int zzfree (int ,int) ;

void delete_value (struct item *I) {
  if (I->value_len >= 0) {
    if (NODE_TYPE (I) == (NODE_TYPE_PLUS | NODE_TYPE_UNSURE)) {
      zzfree (I->value, 4 * I->value_len);
      items_memory -= 4 * I->value_len;
      I->value_len = -1;
      change_node_type (I, NODE_TYPE_MINUS | NODE_TYPE_UNSURE);
    } else if (NODE_TYPE (I) == (NODE_TYPE_PLUS | NODE_TYPE_SURE)) {
      free_item (I);
    } else {
      assert (NODE_TYPE (I) == (NODE_TYPE_ZERO | NODE_TYPE_SURE));
      zzfree (I->value, 4 * I->value_len);
      items_memory -= 4 * I->value_len;
      I->value_len = -1;
      change_node_type (I, NODE_TYPE_MINUS | NODE_TYPE_SURE);
    }
  }
}
