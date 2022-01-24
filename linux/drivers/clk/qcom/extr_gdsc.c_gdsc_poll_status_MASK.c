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
struct gdsc {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  enum gdsc_status { ____Placeholder_gdsc_status } gdsc_status ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ TIMEOUT_US ; 
 scalar_t__ FUNC0 (struct gdsc*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gdsc *sc, enum gdsc_status status)
{
	ktime_t start;

	start = FUNC1();
	do {
		if (FUNC0(sc, status))
			return 0;
	} while (FUNC2(FUNC1(), start) < TIMEOUT_US);

	if (FUNC0(sc, status))
		return 0;

	return -ETIMEDOUT;
}