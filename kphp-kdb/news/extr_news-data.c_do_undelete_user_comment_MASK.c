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
struct lev_news_user_comment_hide {int place; int item; int user_id; } ;

/* Variables and functions */
 scalar_t__ LEV_NEWS_SHOWUSERITEM ; 
 int /*<<< orphan*/  NOTIFY_MODE ; 
 struct lev_news_user_comment_hide* FUNC0 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int FUNC2 (int,int,int,int,int,int) ; 

int FUNC3 (int user_id, int type, int owner, int place, int item) {
  if (!NOTIFY_MODE || !FUNC1 (type, owner, place)) {
    return -1;
  }
  struct lev_news_user_comment_hide *E = FUNC0 (LEV_NEWS_SHOWUSERITEM + type, 20, owner);
  E->place = place;
  E->item = item;
  E->user_id = user_id;

  return FUNC2 (user_id, type, owner, place, item, -1);
}