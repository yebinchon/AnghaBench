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
typedef  int /*<<< orphan*/  git_vector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**) ; 
 int /*<<< orphan*/  GIT_VECTOR_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 

void FUNC6(void)
{
	git_vector x = GIT_VECTOR_INIT;
	void *expected1[] = {
		(void *)0x02, (void *)0x03, (void *)0x04, (void *)0x05,
		(void *)0x06, (void *)0x07, (void *)0x08, (void *)0x09,
		(void *)0x0a
	};
	void *expected2[] = {
		(void *)0x02, (void *)0x04, (void *)0x05, (void *)0x06,
		(void *)0x07, (void *)0x08, (void *)0x09, (void *)0x0a
	};
	void *expected3[] = {
		(void *)0x02, (void *)0x04, (void *)0x05, (void *)0x06,
		(void *)0x0a
	};
	void *expected4[] = {
		(void *)0x02, (void *)0x04, (void *)0x05
	};
	void *expected5[] = {
		(void *)0x00, (void *)0x00, (void *)0x02, (void *)0x04,
		(void *)0x05
	};
	void *expected6[] = {
		(void *)0x00, (void *)0x00, (void *)0x02, (void *)0x04,
		(void *)0x05, (void *)0x00
	};
	void *expected7[] = {
		(void *)0x00, (void *)0x00, (void *)0x02, (void *)0x04,
		(void *)0x00, (void *)0x00, (void *)0x00, (void *)0x05,
		(void *)0x00
	};
	void *expected8[] = {
		(void *)0x04, (void *)0x00, (void *)0x00, (void *)0x00,
		(void *)0x05, (void *)0x00
	};
	void *expected9[] = {
		(void *)0x04, (void *)0x00, (void *)0x05, (void *)0x00
	};
	void *expectedA[] = { (void *)0x04, (void *)0x00 };
	void *expectedB[] = { (void *)0x04 };

	FUNC3(&x, (void *)0x01);
	FUNC3(&x, (void *)0x02);
	FUNC3(&x, (void *)0x03);
	FUNC3(&x, (void *)0x04);
	FUNC3(&x, (void *)0x05);
	FUNC3(&x, (void *)0x06);
	FUNC3(&x, (void *)0x07);
	FUNC3(&x, (void *)0x08);
	FUNC3(&x, (void *)0x09);
	FUNC3(&x, (void *)0x0a);

	FUNC5(&x, 0, 1);
	FUNC1(&x, expected1, FUNC0(expected1));

	FUNC5(&x, 1, 1);
	FUNC1(&x, expected2, FUNC0(expected2));

	FUNC5(&x, 4, 3);
	FUNC1(&x, expected3, FUNC0(expected3));

	FUNC5(&x, 3, 2);
	FUNC1(&x, expected4, FUNC0(expected4));

	FUNC4(&x, 0, 2);
	FUNC1(&x, expected5, FUNC0(expected5));

	FUNC4(&x, 5, 1);
	FUNC1(&x, expected6, FUNC0(expected6));

	FUNC4(&x, 4, 3);
	FUNC1(&x, expected7, FUNC0(expected7));

	FUNC5(&x, 0, 3);
	FUNC1(&x, expected8, FUNC0(expected8));

	FUNC5(&x, 1, 2);
	FUNC1(&x, expected9, FUNC0(expected9));

	FUNC5(&x, 2, 2);
	FUNC1(&x, expectedA, FUNC0(expectedA));

	FUNC5(&x, 1, 1);
	FUNC1(&x, expectedB, FUNC0(expectedB));

	FUNC5(&x, 0, 1);
	FUNC1(&x, NULL, 0);

	FUNC2(&x);
}