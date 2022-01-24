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
struct lev_news_place_delete {int place; } ;

/* Variables and functions */
 scalar_t__ LEV_NEWS_PLACEDEL ; 
 struct lev_news_place_delete* FUNC0 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int FUNC2 (int,int,int) ; 

int FUNC3 (int type, int owner, int place) {
  if (!FUNC1 (type, owner, place)) {
    return -1;
  }

  struct lev_news_place_delete *E = FUNC0 (LEV_NEWS_PLACEDEL + type, 12, owner);
  E->place = place;

  return FUNC2 (type, owner, place);
}