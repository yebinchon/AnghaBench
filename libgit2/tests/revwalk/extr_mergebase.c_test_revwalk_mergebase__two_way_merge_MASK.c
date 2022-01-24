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
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  _repo2 ; 
 int /*<<< orphan*/  FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

void FUNC4(void)
{
	git_oid one, two;
	size_t ahead, behind;

	FUNC1(FUNC3(&one, "9b219343610c88a1187c996d0dc58330b55cee28"));
	FUNC1(FUNC3(&two, "a953a018c5b10b20c86e69fef55ebc8ad4c5a417"));
	FUNC1(FUNC2(&ahead, &behind, _repo2, &one, &two));

	FUNC0(ahead,  8);
	FUNC0(behind,  2);

	FUNC1(FUNC2(&ahead, &behind, _repo2, &two, &one));

	FUNC0(ahead,  2);
	FUNC0(behind,  8);
}