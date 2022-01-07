
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int type; int key; int key_len; } ;


 int item_tree ;
 int tree_delete (int ,int ,int ) ;
 int tree_insert (int ,struct item*) ;

void change_node_type (struct item *I, int new_type) {
  item_tree = tree_delete (item_tree, I->key_len, I->key);
  I->type = (I->type & ~7) | new_type;
  item_tree = tree_insert (item_tree, I);
}
