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
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*) ; 
 scalar_t__ FUNC3 () ; 
 int count ; 
 int /*<<< orphan*/  count_cond ; 
 int /*<<< orphan*/  count_lock ; 

__attribute__((used)) static int
FUNC4(int i, int ms)
{
	struct timeval tv;
	DWORD elapsed;
	int rv = -1;

	FUNC0(count_lock, 0);
	while (ms > 0 && count != i) {
		tv.tv_sec = 0;
		tv.tv_usec = ms * 1000;
		elapsed = FUNC3();
		FUNC2(count_cond, count_lock, &tv);
		elapsed = FUNC3() - elapsed;
		ms -= elapsed;
	}
	if (count == i)
		rv = 0;
	FUNC1(count_lock, 0);

	return rv;
}