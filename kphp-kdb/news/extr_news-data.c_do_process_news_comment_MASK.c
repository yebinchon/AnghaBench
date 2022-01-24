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
struct lev_news_comment {int group; int owner; int place; int item; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMM_MODE ; 
 scalar_t__ LEV_NEWS_COMMENT ; 
 struct lev_news_comment* FUNC0 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int FUNC2 (struct lev_news_comment*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int) ; 

int FUNC4 (int type, int user, int group, int owner, int place, int item) {
  if (!COMM_MODE || !FUNC1 (type, owner, place)) {
    return -1;
  }

  struct lev_news_comment *E = FUNC0 (LEV_NEWS_COMMENT + type, 24, user);
  E->group = group;
  E->owner = owner;
  E->place = place;
  E->item = item;

  FUNC3 (2, "created news comment type %08x, place_id=%d\n", E->type, E->place);

  return FUNC2 (E);
}