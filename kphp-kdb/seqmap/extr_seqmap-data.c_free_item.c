
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct item {int key_len; int value_len; struct item* value; struct item* key; } ;
struct TYPE_4__ {scalar_t__ size; } ;


 int assert (int) ;
 TYPE_1__* item_tree ;
 scalar_t__ items_count ;
 int items_memory ;
 TYPE_1__* tree_delete (TYPE_1__*,int,struct item*) ;
 int zzfree (struct item*,int) ;

void free_item (struct item *I) {
  item_tree = tree_delete (item_tree, I->key_len, I->key);
  items_count --;
  assert (item_tree ? (item_tree->size == items_count) : (!items_count));
  if (I->key_len) {
    zzfree (I->key, 4 * I->key_len);
    items_memory -= 4 * I->key_len;
  }
  if (I->value_len) {
    zzfree (I->value, 4 * I->value_len);
    items_memory -= 4 * I->value_len;
  }
  zzfree (I, sizeof (*I));
  items_memory -= sizeof (*I);
}
