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
 int /*<<< orphan*/  GIT_VECTOR_INIT ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
	git_vector v = GIT_VECTOR_INIT;
	size_t i;

	void *in1[] = {(void *) 0x0, (void *) 0x1, (void *) 0x2, (void *) 0x3};
	void *out1[] = {(void *) 0x3, (void *) 0x2, (void *) 0x1, (void *) 0x0};

	void *in2[] = {(void *) 0x0, (void *) 0x1, (void *) 0x2, (void *) 0x3, (void *) 0x4};
	void *out2[] = {(void *) 0x4, (void *) 0x3, (void *) 0x2, (void *) 0x1, (void *) 0x0};

	for (i = 0; i < 4; i++)
		FUNC1(FUNC5(&v, in1[i]));

	FUNC6(&v);

	for (i = 0; i < 4; i++)
		FUNC0(out1[i], FUNC4(&v, i));

	FUNC2(&v);
	for (i = 0; i < 5; i++)
		FUNC1(FUNC5(&v, in2[i]));

	FUNC6(&v);

	for (i = 0; i < 5; i++)
		FUNC0(out2[i], FUNC4(&v, i));

	FUNC3(&v);
}