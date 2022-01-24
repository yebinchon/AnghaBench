#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cpuidle_device {TYPE_1__* coupled; } ;
typedef  int /*<<< orphan*/  atomic_t ;
struct TYPE_2__ {int online_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct cpuidle_device *dev, atomic_t *a)
{
	int n = dev->coupled->online_count;

	FUNC5();
	FUNC0(a);

	while (FUNC2(a) < n)
		FUNC4();

	if (FUNC1(a) == n * 2) {
		FUNC3(a, 0);
		return;
	}

	while (FUNC2(a) > n)
		FUNC4();
}