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
struct lev_news_comment_hide {int place; int item; } ;

/* Variables and functions */
 scalar_t__ COMM_MODE ; 
 scalar_t__ LEV_NEWS_HIDEITEM ; 
 struct lev_news_comment_hide* FUNC0 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int FUNC2 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int,int,int,int /*<<< orphan*/ ) ; 

int FUNC4 (int type, int owner, int place, int item) {
  if (!FUNC1 (type, owner, place)) {
    return -1;
  }
  struct lev_news_comment_hide *E = FUNC0 (LEV_NEWS_HIDEITEM + type, 16, owner);
  E->place = place;
  E->item = item;

  if (COMM_MODE) {
    return FUNC2 (type, owner, place, item, 0);
  } else {
    return FUNC3 (type, owner, place, item, 0);
  }
}