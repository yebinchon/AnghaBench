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
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t*,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

void FUNC7(void)
{
	git_oid result, one, two;
	size_t ahead, behind;
	int error;

	FUNC3(FUNC6(&one, "763d71aadf09a7951596c9746c024e7eece7c7af"));
	FUNC3(FUNC6(&two, "e90810b8df3e80c413d903f631643c716887138d"));

	error = FUNC5(&result, _repo, &one, &two);
	FUNC2(error);

	FUNC0(GIT_ENOTFOUND, error);

	FUNC3(FUNC4(&ahead, &behind, _repo, &one, &two));
	FUNC1(4, ahead);
	FUNC1(2, behind);
}