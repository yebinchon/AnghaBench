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
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(atomic_t *v)
{
	unsigned int counter;

	counter = (unsigned int)FUNC1(v, 1, 0);
	if (counter <= (unsigned int)INT_MAX)
		return (int)counter;

	FUNC0(v);

	return -EINVAL;
}