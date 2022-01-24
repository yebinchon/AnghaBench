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
struct lev_privacy {int privacy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_NEWS_PRIVACY ; 
 struct lev_privacy* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int,int) ; 

int FUNC3 (int user_id, int mask) {
  if (FUNC1 (user_id) < 0) {
    return -1;
  }
  struct lev_privacy *E = FUNC0 (LEV_NEWS_PRIVACY, 12, user_id);
  E->privacy = mask | 1;
  return FUNC2 (user_id, mask);
}