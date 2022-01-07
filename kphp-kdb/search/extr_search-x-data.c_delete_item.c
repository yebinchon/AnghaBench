
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int extra; } ;
struct index_item {int extra; } ;


 int FLAG_DELETED ;
 int ONLY_FIND ;
 int assert (int) ;
 int del_item_instances ;
 int del_items ;
 int delete_item_rates (struct item*) ;
 struct index_item* get_idx_item (long long) ;
 struct item* get_item_f (long long,int ) ;
 int item_clear_wordlist (struct item*) ;
 int mod_items ;

__attribute__((used)) static int delete_item (long long item_id) {
  struct item *I = get_item_f (item_id, ONLY_FIND);
  struct index_item *II = get_idx_item (item_id);
  if (II) {
    II->extra |= FLAG_DELETED;
    mod_items++;
    assert (!I);
    return 1;
  }
  if (!I || (I->extra & FLAG_DELETED)) { return 0; }
  delete_item_rates (I);
  item_clear_wordlist (I);
  del_items++;
  del_item_instances++;
  return 1;
}
