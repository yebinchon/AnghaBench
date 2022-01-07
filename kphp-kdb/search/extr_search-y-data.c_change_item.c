
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct index_item {int extra; } ;
struct TYPE_7__ {int extra; int mask; int words; } ;
typedef TYPE_1__ item_t ;


 int ADD_NOT_FOUND_ITEM ;
 int FLAG_DELETED ;
 int ONLY_FIND ;
 int Q ;
 int assert (int) ;
 int clear_cur_wordlist () ;
 int creation_date ;
 int cur_wordlist_head ;
 int del_items ;
 int fits (long long) ;
 struct index_item* get_idx_item (long long) ;
 TYPE_1__* get_item_f (long long,int ) ;
 scalar_t__ import_only_mode ;
 int item_add_words (TYPE_1__*,int) ;
 int item_clear_wordlist (TYPE_1__*,int *) ;
 int log_last_ts ;
 int mod_items ;
 int move_item_rates (TYPE_1__*,struct index_item*) ;
 int searchy_extract_words (char const*,int,int ,int,int ,int ,long long,int*) ;
 int set_multiple_rates_item (TYPE_1__*,int,int*) ;
 int tag_owner ;
 int universal ;
 int vkprintf (int,char*,char const*,int,long long,int,int) ;

__attribute__((used)) static int change_item (const char *text, int len, long long item_id, int rate, int rate2) {
  item_t *I;
  struct index_item *II;

  assert (text && len >= 0 && len < 65536 && !text[len]);
  assert (item_id > 0);

  if (!fits (item_id)) {
    return 0;
  }

  if (import_only_mode) {
    return 1;
  }

  vkprintf (4, "change_item: text=%s, len = %d, item_id = %016llx, rate = %d, rate2 = %d\n",
    text, len, item_id, rate, rate2);

  II = get_idx_item (item_id);
  if (II) {
    mod_items++;
    II->extra |= FLAG_DELETED;

  }

  I = get_item_f (item_id, ONLY_FIND);
  if (I) {
    if (I->extra & FLAG_DELETED) {
      del_items--;
      I->extra ^= FLAG_DELETED;
    }
    item_clear_wordlist (I, &I->words);
  } else {
    I = get_item_f (item_id, ADD_NOT_FOUND_ITEM);
    if (!I) {
      return 0;
    }
  }

  if (II) {
    move_item_rates (I, II);
  }

  int rates[4], mask = 1 + 2, l = 2;
  rates[0] = rate;
  rates[1] = rate2;
  if (!creation_date || !(I->mask & 4)) {
    rates[l++] = log_last_ts;
    mask += 4;
  }

  clear_cur_wordlist ();
  int positions;
  int Wc = searchy_extract_words (text, len, Q, 65536, universal, tag_owner, item_id, &positions);
  item_add_words (I, Wc);
  I->words = cur_wordlist_head;
  set_multiple_rates_item (I, mask, rates);
  return 1;
}
