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
 int /*<<< orphan*/  cb_status__interrupt ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

void FUNC3(void)
{
	int count = 0;
	git_repository *repo = FUNC1("status");

	FUNC0(
		-111, FUNC2(repo, cb_status__interrupt, &count)
	);

	FUNC0(8, count);
}