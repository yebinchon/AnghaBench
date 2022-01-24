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

/* Variables and functions */
 int /*<<< orphan*/  FETCH_HEAD_EXPLICIT_DATA ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 size_t FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	size_t refs;

	FUNC2();
	refs = FUNC1();
	FUNC3("refs/heads/first-merge:", FETCH_HEAD_EXPLICIT_DATA);

	FUNC0(refs, FUNC1());
}