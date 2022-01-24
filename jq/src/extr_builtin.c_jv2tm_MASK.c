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
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; int tm_wday; int tm_yday; } ;
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tm*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(jv a, struct tm *tm) {
  FUNC2(tm, 0, sizeof(*tm));
  FUNC0(tm->tm_year, a, 0);
  tm->tm_year -= 1900;
  FUNC0(tm->tm_mon,  a, 1);
  FUNC0(tm->tm_mday, a, 2);
  FUNC0(tm->tm_hour, a, 3);
  FUNC0(tm->tm_min,  a, 4);
  FUNC0(tm->tm_sec,  a, 5);
  FUNC0(tm->tm_wday, a, 6);
  FUNC0(tm->tm_yday, a, 7);
  FUNC1(a);

  // We use UTC everywhere (gettimeofday, gmtime) and UTC does not do DST.
  // Setting tm_isdst to 0 is done by the memset.
  // tm->tm_isdst = 0;

  // The standard permits the tm structure to contain additional members. We
  // hope it is okay to initialize them to zero, because the standard does not
  // provide an alternative.

  return 1;
}