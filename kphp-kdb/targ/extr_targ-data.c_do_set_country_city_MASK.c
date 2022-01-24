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
struct lev_univcity {int uni_country; int uni_city; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_TARG_UNIVCITY ; 
 struct lev_univcity* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct lev_univcity*) ; 

int FUNC3 (int user_id, int country, int city) {
  if (country < 0 || country >= 256 || city < 0 || !FUNC1 (user_id)) {
    return 0;
  }
  struct lev_univcity *E = FUNC0 (LEV_TARG_UNIVCITY, 16, user_id);
  E->uni_country = country;
  E->uni_city = city;
  FUNC2 (E);
  return 1;
}