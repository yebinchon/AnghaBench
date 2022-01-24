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
struct lev_search_incr_rate_short {long long obj_id; } ;
struct lev_search_incr_rate {long long obj_id; } ;

/* Variables and functions */
 scalar_t__ LEV_SEARCH_INCR_RATE ; 
 scalar_t__ LEV_SEARCH_INCR_RATE_SHORT ; 
 void* FUNC0 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (long long) ; 
 int FUNC2 (long long,int) ; 

int FUNC3 (long long item_id, int rate_incr) {
  if (!FUNC1 (item_id)) { return 0; }
  if (rate_incr == (signed char) rate_incr) {
    struct lev_search_incr_rate_short *IS = FUNC0 (LEV_SEARCH_INCR_RATE_SHORT + (rate_incr & 0xff), 12, 0);
    IS->obj_id = item_id;
  } else {
    struct lev_search_incr_rate *IL = FUNC0 (LEV_SEARCH_INCR_RATE, 16, rate_incr);
    IL->obj_id = item_id;
  }
  return FUNC2 (item_id, rate_incr);
}