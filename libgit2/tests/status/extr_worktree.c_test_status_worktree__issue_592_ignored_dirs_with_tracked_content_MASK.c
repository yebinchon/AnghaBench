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
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  cb_status__count ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

void FUNC4(void)
{
	int count = 0;
	git_repository *repo = FUNC2("issue_592b");

	FUNC1(FUNC3(repo, cb_status__count, &count));
	FUNC0(1, count);

	/* if we are really mimicking core git, then only ignored1.txt
	 * at the top level will show up in the ignores list here.
	 * everything else will be unmodified or skipped completely.
	 */
}