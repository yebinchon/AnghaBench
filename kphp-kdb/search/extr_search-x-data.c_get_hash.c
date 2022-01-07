
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int extra; } ;


 int FLAG_DELETED ;
 int ONLY_FIND ;
 int assert (int) ;
 long long get_hash_item (struct item*) ;
 scalar_t__ get_idx_item (long long) ;
 struct item* get_item_f (long long,int ) ;
 int vkprintf (int,char*,long long,struct item*,struct item*) ;

int get_hash (long long *hash, long long item_id) {
  struct item *I = get_item_f (item_id, ONLY_FIND);
  struct item *II = (struct item*) get_idx_item (item_id);

  vkprintf (2, "get_hash(%016llx): %p %p\n", item_id, I, II);

  if (II) {
    assert (!I);
    *hash = get_hash_item (II);
    return 1;
  }

  if (!I || (I->extra & FLAG_DELETED)) {
    return 0;
  }
  *hash = get_hash_item (I);
  return 1;
}
