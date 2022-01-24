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
struct tm {scalar_t__ tm_yday; scalar_t__ tm_wday; scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static jv FUNC2(struct tm *tm) {
  return FUNC0(FUNC1(tm->tm_year + 1900),
                  FUNC1(tm->tm_mon),
                  FUNC1(tm->tm_mday),
                  FUNC1(tm->tm_hour),
                  FUNC1(tm->tm_min),
                  FUNC1(tm->tm_sec),
                  FUNC1(tm->tm_wday),
                  FUNC1(tm->tm_yday));
}