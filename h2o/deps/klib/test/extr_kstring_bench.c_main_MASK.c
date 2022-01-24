#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int s; scalar_t__ l; scalar_t__ m; } ;
typedef  TYPE_1__ kstring_t ;
typedef  scalar_t__ clock_t ;

/* Variables and functions */
 double CLOCKS_PER_SEC ; 
 int N ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,double) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC7()
{
	int i;
	clock_t t;
	kstring_t s, s2;
	FUNC6(11);
	s.l = s.m = 0; s.s = 0;
	t = FUNC0();
	for (i = 0; i < N; ++i) {
		int x = FUNC5();
		s.l = 0;
		FUNC3(x, &s);
	}
	FUNC1(stderr, "kputw: %lf\n", (double)(FUNC0() - t) / CLOCKS_PER_SEC);
	FUNC6(11);
	t = FUNC0();
	for (i = 0; i < N; ++i) {
		int x = FUNC5();
		s.l = 0;
		FUNC4(&s, "%d", x);
	}
	FUNC1(stderr, "ksprintf: %lf\n", (double)(FUNC0() - t) / CLOCKS_PER_SEC);

	FUNC6(11);
	s2.l = s2.m = 0; s2.s = 0;
	t = FUNC0();
	for (i = 0; i < N; ++i) {
		int x = FUNC5();
		s2.l = s.l = 0;
		FUNC3(x, &s2);
		FUNC2(s2.s, &s);
	}
	FUNC1(stderr, "kputw+kputs: %lf\n", (double)(FUNC0() - t) / CLOCKS_PER_SEC);
	FUNC6(11);
	t = FUNC0();
	for (i = 0; i < N; ++i) {
		int x = FUNC5();
		s2.l = s.l = 0;
		FUNC3(x, &s2);
		FUNC4(&s, "%s", s2.s);
	}
	FUNC1(stderr, "kputw+ksprintf: %lf\n", (double)(FUNC0() - t) / CLOCKS_PER_SEC);
	return 0;
}