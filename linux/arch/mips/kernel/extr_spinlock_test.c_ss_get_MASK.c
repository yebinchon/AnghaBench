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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ss_spin ; 

__attribute__((used)) static int FUNC5(void *data, u64 *val)
{
	ktime_t start, finish;
	int loops;
	int cont;
	FUNC0(ss_spin);

	loops = 1000000;
	cont = 1;

	start = FUNC1();

	while (cont) {
		FUNC3(&ss_spin);
		loops--;
		if (loops == 0)
			cont = 0;
		FUNC4(&ss_spin);
	}

	finish = FUNC1();

	*val = FUNC2(finish, start);

	return 0;
}