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
typedef  int /*<<< orphan*/  timestamp_t ;

/* Variables and functions */
 int /*<<< orphan*/  TIME_MAX ; 
 int /*<<< orphan*/  FUNC0 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

int FUNC2(const char *date, timestamp_t *timestamp)
{
	int errors = 0;

	if (!FUNC1(date, "never") || !FUNC1(date, "false"))
		*timestamp = 0;
	else if (!FUNC1(date, "all") || !FUNC1(date, "now"))
		/*
		 * We take over "now" here, which usually translates
		 * to the current timestamp.  This is because the user
		 * really means to expire everything she has done in
		 * the past, and by definition reflogs are the record
		 * of the past, and there is nothing from the future
		 * to be kept.
		 */
		*timestamp = TIME_MAX;
	else
		*timestamp = FUNC0(date, &errors);

	return errors;
}