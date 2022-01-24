#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * s; scalar_t__ m; scalar_t__ l; } ;
typedef  TYPE_1__ kstring_t ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int INT_MAX ; 
 int INT_MIN ; 
 int LONG_MAX ; 
 int LONG_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ nfail ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

int FUNC4()
{
	kstring_t ks;

	ks.l = ks.m = 0;
	ks.s = NULL;

	FUNC3(&ks, 0);
	FUNC3(&ks, 1);
	FUNC3(&ks, 37);
	FUNC3(&ks, 12345);
	FUNC3(&ks, -12345);
	FUNC3(&ks, INT_MAX);
	FUNC3(&ks, -INT_MAX);
	FUNC3(&ks, INT_MIN);

	FUNC2(&ks, 0);
	FUNC2(&ks, 1);
	FUNC2(&ks, 37);
	FUNC2(&ks, 12345);
	FUNC2(&ks, -12345);
	FUNC2(&ks, INT_MAX);
	FUNC2(&ks, -INT_MAX);
	FUNC2(&ks, INT_MIN);
	FUNC2(&ks, LONG_MAX);
	FUNC2(&ks, -LONG_MAX);
	FUNC2(&ks, LONG_MIN);

	FUNC1(ks.s);

	if (nfail > 0) {
		FUNC0(stderr, "Total failures: %ld\n", nfail);
		return EXIT_FAILURE;
	}

	return EXIT_SUCCESS;
}