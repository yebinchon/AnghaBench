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
struct timeval {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,struct timeval*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *,int*) ; 

timestamp_t FUNC3(const char *date, int *error_ret)
{
	struct timeval tv;
	timestamp_t timestamp;
	int offset;
	int dummy = 0;
	if (!error_ret)
		error_ret = &dummy;

	if (!FUNC2(date, &timestamp, &offset)) {
		*error_ret = 0;
		return timestamp;
	}

	FUNC1(&tv);
	return FUNC0(date, &tv, error_ret);
}