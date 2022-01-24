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
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  git_vector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC2(git_vector *a, git_vector *b)
{
	git_vector t;

	FUNC0(a && b);

	if (a != b) {
		FUNC1(&t, a, sizeof(t));
		FUNC1(a, b, sizeof(t));
		FUNC1(b, &t, sizeof(t));
	}
}