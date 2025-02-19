
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct item {int key_len; int value_len; int time; int type; int y; scalar_t__ value; void* key; } ;
struct TYPE_4__ {scalar_t__ size; } ;


 int assert (int) ;
 TYPE_1__* item_tree ;
 scalar_t__ items_count ;
 int items_memory ;
 int lrand48 () ;
 int memcpy (void*,int const*,int) ;
 int memset (struct item*,int ,int) ;
 TYPE_1__* tree_insert (TYPE_1__*,struct item*) ;
 void* zzmalloc (int) ;

struct item *alloc_item (int key_len, const int *key, int type, int value_len) {
  assert (value_len == 0 || value_len == -1);
  struct item *I = zzmalloc (sizeof (*I));
  memset (I, 0, sizeof (*I));
  items_memory += sizeof (*I);
  I->key_len = key_len;
  I->key = zzmalloc (4 * key_len);
  memcpy (I->key, key, 4 * key_len);
  items_memory += key_len * 4;
  I->value_len = value_len;
  I->value = 0;
  items_count ++;
  I->time = -1;
  I->type = type;
  I->y = lrand48 ();

  item_tree = tree_insert (item_tree, I);
  assert (item_tree->size == items_count);
  return I;
}
