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
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t*,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

void FUNC6(void)
{
	git_oid result, one, two, expected;
	size_t ahead, behind;

	FUNC2(FUNC5(&one, "763d71aadf09a7951596c9746c024e7eece7c7af"));
	FUNC2(FUNC5(&two, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750"));
	FUNC2(FUNC5(&expected, "c47800c7266a2be04c571c04d5a6614691ea99bd"));

	FUNC2(FUNC4(&result, _repo, &one, &two));
	FUNC0(&expected, &result);

	FUNC2(FUNC3( &ahead, &behind, _repo, &one, &two));
	FUNC1(ahead,  1);
	FUNC1(behind,  4);

	FUNC2(FUNC3( &ahead, &behind, _repo, &two, &one));
	FUNC1(ahead,  4);
	FUNC1(behind,  1);
}