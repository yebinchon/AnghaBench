
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_replace_text_long {int type; char* text; int text_len; int user_id; } ;
struct lev_replace_text {char* text; } ;


 int LEV_TX_REPLACE_TEXT ;
 int LEV_TX_REPLACE_TEXT_LONG ;
 int* User ;
 int* UserMsgBytes ;
 int * UserMsgCnt ;
 scalar_t__* UserSearchWords ;
 int assert (int) ;
 int compute_message_distinct_words (char*,int) ;
 int conv_uid (int ) ;
 int discarded_rec ;
 int max_uid ;
 int max_user_search_id ;
 scalar_t__ max_user_search_words ;
 int msgs_bytes ;
 int msgs_read ;
 int preprocess_text (char*,int) ;
 scalar_t__ search_enabled ;
 int tot_search_words ;

void replace_message_text0 (struct lev_replace_text_long *E) {
  int text_len;
  char *text;

  if (E->type == LEV_TX_REPLACE_TEXT_LONG) {
    text = E->text;
    text_len = E->text_len;
  } else {
    assert ((E->type & -0x1000) == LEV_TX_REPLACE_TEXT);
    text = ((struct lev_replace_text *) E)->text;
    text_len = E->type & 0xfff;
  }

  int uid = conv_uid (E->user_id);

  if (uid < 0) {
    discarded_rec++;
    return;
  }

  assert (User[uid]);

  preprocess_text (text, text_len);

  if (search_enabled) {
    int d_words = compute_message_distinct_words (text, text_len);
    tot_search_words += d_words;
    UserSearchWords[uid] += d_words;
    if (UserSearchWords[uid] > max_user_search_words) {
      max_user_search_words = UserSearchWords[uid];
      max_user_search_id = E->user_id;
    }
  }

  msgs_read++;
  msgs_bytes += text_len;

  assert (uid <= max_uid);

  UserMsgCnt[uid]++;
  UserMsgBytes[uid] += text_len;
}
