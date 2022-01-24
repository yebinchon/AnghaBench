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
typedef  int /*<<< orphan*/  GJSON ;

/* Variables and functions */
 int DATE_TIME ; 
 int /*<<< orphan*/  OVERALL_DATETIME ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  now_tm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (GJSON * json, int sp)
{
  char now[DATE_TIME];

  FUNC0 ();
  FUNC2 (now, DATE_TIME, "%Y-%m-%d %H:%M:%S %z", now_tm);

  FUNC1 (json, OVERALL_DATETIME, now, sp, 0);
}