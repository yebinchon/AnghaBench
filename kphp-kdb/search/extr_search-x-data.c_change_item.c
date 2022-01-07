
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct item {int extra; int words; int sum_sqr_freq_text; int sum_freq_title_freq_text; int sum_sqr_freq_title; } ;
struct index_item {int extra; } ;
struct TYPE_4__ {int freqs; int word; } ;


 int ADD_NOT_FOUND_ITEM ;
 int FLAG_DELETED ;
 int ONLY_FIND ;
 TYPE_1__* Q ;
 int assert (int) ;
 int clear_cur_wordlist () ;
 int cur_wordlist_head ;
 int del_items ;
 int evaluate_freq_sqr_sums (TYPE_1__*,int,int *,int *,int *) ;
 int extract_words (char const*,int,int ,TYPE_1__*,int,int ,long long) ;
 int fits (long long) ;
 struct index_item* get_idx_item (long long) ;
 struct item* get_item_f (long long,int ) ;
 int item_add_word (struct item*,int ,int ) ;
 int item_clear_wordlist (struct item*) ;
 int mod_items ;
 int move_item_rates (struct item*,struct index_item*) ;
 int now ;
 int set_multiple_rates_item (struct item*,int,int*) ;
 int tag_owner ;
 int universal ;
 int vkprintf (int,char*,char const*,int,long long,int,int) ;

__attribute__((used)) static int change_item (const char *text, int len, long long item_id, int rate, int rate2) {
  struct item *I;
  struct index_item *II;

  assert (text && len >= 0 && len < 65536 && !text[len]);
  assert (item_id > 0);

  if (!fits (item_id)) {
    return 0;
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
    item_clear_wordlist (I);
  } else {
    I = get_item_f (item_id, ADD_NOT_FOUND_ITEM);
    if (!I) {
      return 0;
    }
  }

  if (II) {
    move_item_rates (I, II);
  }

  int rates[3];
  rates[0] = rate;
  rates[1] = rate2;
  rates[2] = now;
  set_multiple_rates_item (I, 1 + 2 + 4, rates);







  clear_cur_wordlist ();
  int i, Wc = extract_words (text, len, universal, Q, 65536, tag_owner, item_id);
  for (i = 0; i < Wc; i++) {
    item_add_word (I, Q[i].word, Q[i].freqs);
  }
  evaluate_freq_sqr_sums (Q, Wc, &I->sum_sqr_freq_title, &I->sum_freq_title_freq_text, &I->sum_sqr_freq_text);
  I->words = cur_wordlist_head;
  return 1;
}
