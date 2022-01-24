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
struct lev_news_recommend {int owner; int place; int action; int item; int item_creation_time; } ;

/* Variables and functions */
 scalar_t__ LEV_NEWS_RECOMMEND ; 
 int /*<<< orphan*/  RECOMMEND_MODE ; 
 struct lev_news_recommend* FUNC0 (scalar_t__,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct lev_news_recommend*) ; 
 int /*<<< orphan*/ * FUNC3 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,int,int,int,int) ; 

int FUNC6 (int user_id, int type, int owner, int place, int action, int item, int item_creation_time) {
  if (FUNC1 (user_id) < 0 || !RECOMMEND_MODE || !FUNC4 (type)) {
    return -1;
  }
  if (FUNC3 (user_id, type, owner, place, action) != NULL) {
    FUNC5 (4, "recommend_item_f (%d, %d, %d, %d, %d) returns not NULL.\n", user_id, type, owner, place, action);
    return 0;
  }

  struct lev_news_recommend *E = FUNC0 (LEV_NEWS_RECOMMEND + type, sizeof (*E), user_id);
  E->owner = owner;
  E->place = place;
  E->action = action;
  E->item = item;
  //E->rate = rate;
  E->item_creation_time = item_creation_time;

  return FUNC2 (E);
}