#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tm ;
struct tm {int /*<<< orphan*/  tm_year; } ;
struct TYPE_3__ {int /*<<< orphan*/  tm_year; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tm*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* now_tm ; 
 scalar_t__ FUNC3 (char const*,char const*,struct tm*) ; 
 scalar_t__ FUNC4 (char*,int,char const*,struct tm*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timestamp ; 

int
FUNC7 (char *res, const char *data, const char *from, const char *to,
              int size)
{
  struct tm tm;

  FUNC2 (&tm, 0, sizeof (tm));
  timestamp = FUNC6 (NULL);
  now_tm = FUNC1 (&timestamp);

  if (FUNC3 (data, from, &tm) != 0)
    return 1;

  /* if not a timestamp, use current year if not passed */
  if (!FUNC0 (from) && FUNC5 (from, "Yy") == NULL)
    tm.tm_year = now_tm->tm_year;

  if (FUNC4 (res, size, to, &tm) <= 0)
    return 1;

  return 0;
}