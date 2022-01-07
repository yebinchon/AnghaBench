
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int extra; } ;


 int FLAG_DELETED ;
 int ONLY_FIND ;
 int assert (int) ;
 scalar_t__ get_idx_item (long long) ;
 struct item* get_item_f (long long,int ) ;
 int get_rate_item (struct item*,int) ;
 int vkprintf (int,char*,long long,struct item*,struct item*) ;

int get_rates (int *rates, long long item_id) {
  struct item *I = get_item_f (item_id, ONLY_FIND);
  struct item *II = (struct item*) get_idx_item (item_id);

  vkprintf (2, "get_rates(%016llx): %p %p\n", item_id, I, II);

  if (II) {
    assert (!I);
    rates[0] = get_rate_item (II, 0);
    rates[1] = get_rate_item (II, 1);
    return 1;
  }
  if (!I || (I->extra & FLAG_DELETED)) {
    return 0;
  }
  rates[0] = get_rate_item (I, 0);
  rates[1] = get_rate_item (I, 1);
  return 1;
}
