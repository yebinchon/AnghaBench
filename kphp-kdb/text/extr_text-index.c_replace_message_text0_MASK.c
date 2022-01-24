#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lev_replace_text_long {int type; char* text; int text_len; int /*<<< orphan*/  user_id; } ;
struct lev_replace_text {char* text; } ;

/* Variables and functions */
 int LEV_TX_REPLACE_TEXT ; 
 int LEV_TX_REPLACE_TEXT_LONG ; 
 int* User ; 
 int* UserMsgBytes ; 
 int /*<<< orphan*/ * UserMsgCnt ; 
 scalar_t__* UserSearchWords ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  discarded_rec ; 
 int max_uid ; 
 int /*<<< orphan*/  max_user_search_id ; 
 scalar_t__ max_user_search_words ; 
 int msgs_bytes ; 
 int /*<<< orphan*/  msgs_read ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ search_enabled ; 
 int tot_search_words ; 

void FUNC4 (struct lev_replace_text_long *E) {
  int text_len;
  char *text;

  if (E->type == LEV_TX_REPLACE_TEXT_LONG) {
    text = E->text;
    text_len = E->text_len;
  } else {
    FUNC0 ((E->type & -0x1000) == LEV_TX_REPLACE_TEXT);
    text = ((struct lev_replace_text *) E)->text;
    text_len = E->type & 0xfff;
  }

  int uid = FUNC2 (E->user_id);

  if (uid < 0) {
    discarded_rec++;
    return;
  }

  FUNC0 (User[uid]);

  FUNC3 (text, text_len);

  if (search_enabled) {
    int d_words = FUNC1 (text, text_len);
    tot_search_words += d_words;
    UserSearchWords[uid] += d_words;
    if (UserSearchWords[uid] > max_user_search_words) {
      max_user_search_words = UserSearchWords[uid];
      max_user_search_id = E->user_id;
    }
  }

  msgs_read++;
  msgs_bytes += text_len;

  FUNC0 (uid <= max_uid);

  UserMsgCnt[uid]++;
  UserMsgBytes[uid] += text_len;
}