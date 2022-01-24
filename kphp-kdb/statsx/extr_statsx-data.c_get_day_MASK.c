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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_hour; int tm_mday; int tm_mon; int tm_year; scalar_t__ tm_min; scalar_t__ tm_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ create_day_start ; 
 int /*<<< orphan*/  custom_version_names ; 
 int /*<<< orphan*/  default_timezone ; 
 struct tm* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct tm*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4 (int created_at) {
  if (!custom_version_names) {
    if (create_day_start) {
      return (created_at + FUNC3 (default_timezone) ) / 86400;
    } else {
      return (created_at) / 86400;
    }
  } else {
    long x = created_at;
    FUNC0 (sizeof (time_t) == sizeof (long));
    //struct tm *t = localtime ((time_t *)&x);
    struct tm *t = FUNC1 ((time_t *)&x);
    t->tm_sec = 0;
    t->tm_min = 0;
    t->tm_hour = 12;
    t->tm_mday = created_at % 100;
    t->tm_mon = created_at / 100 % 100 - 1;
    t->tm_year = created_at / 10000 - 1900;
    return FUNC2 (t) / 86400;
  }
}