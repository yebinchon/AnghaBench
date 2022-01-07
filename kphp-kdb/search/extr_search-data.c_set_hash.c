
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int extra; } ;
typedef TYPE_1__ item_t ;


 int FLAG_DELETED ;
 int ONLY_FIND ;
 int assert (int) ;
 scalar_t__ get_idx_item (long long) ;
 TYPE_1__* get_item_f (long long,int ) ;
 int set_hash_item (TYPE_1__*,long long) ;

__attribute__((used)) static int set_hash (long long item_id, long long hash) {
  item_t *I = get_item_f (item_id, ONLY_FIND);
  item_t *II = (item_t *) get_idx_item (item_id);
  if (II) {
    set_hash_item (II, hash);
    assert (!I);
    return 1;
  }
  if (!I || (I->extra & FLAG_DELETED)) {
    return 0;
  }
  set_hash_item (I, hash);
  return 1;
}
