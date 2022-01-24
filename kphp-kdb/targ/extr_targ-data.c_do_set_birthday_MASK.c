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
struct lev_birthday {int year; int day; int month; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_TARG_BIRTHDAY ; 
 struct lev_birthday* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct lev_birthday*) ; 

int FUNC3 (int user_id, int day, int month, int year) {
  if (day < 0 || day > 31 || month < 0 || month > 12 || (year < 1900 && year) || year > 2008 || !FUNC1 (user_id)) {
    return 0;
  }
  struct lev_birthday *E = FUNC0 (LEV_TARG_BIRTHDAY, 12, user_id);
  E->year = year;
  E->day = day;
  E->month = month;
  FUNC2 (E);
  return 1;
}