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
struct tm {int dummy; } ;

/* Variables and functions */
 struct tm* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*,struct tm*,int) ; 

struct tm *
FUNC2 (const time_t *timer, struct tm *result)
{
	struct tm *local_result;
	local_result = FUNC0 (timer);

	if (local_result == NULL || result == NULL)
		return NULL;

	FUNC1 (result, local_result, sizeof (struct tm));
	return result;
}