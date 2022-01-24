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
struct tm {int tm_year; } ;

/* Variables and functions */
 scalar_t__ create_day_start ; 
 int /*<<< orphan*/  custom_version_names ; 
 int /*<<< orphan*/  default_timezone ; 
 struct tm* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2 (int created_at) {
  if (!custom_version_names) {
    long x = created_at;
    if (create_day_start) {
      x += FUNC1 (default_timezone);
    }
    //struct tm *t = localtime ((time_t *)&x);
    struct tm *t = FUNC0 ((time_t *)&x);
    return t->tm_year + 1900;
  } else {
    return created_at / 10000;
  }
}