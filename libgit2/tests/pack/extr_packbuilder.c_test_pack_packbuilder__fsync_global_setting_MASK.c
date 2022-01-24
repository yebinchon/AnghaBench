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
 int /*<<< orphan*/  GIT_OPT_ENABLE_FSYNC_GITDIR ; 
 int /*<<< orphan*/  _packbuilder ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  expected_fsyncs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ p_fsync__cnt ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
	FUNC1(FUNC2(GIT_OPT_ENABLE_FSYNC_GITDIR, 1));
	p_fsync__cnt = 0;
	FUNC4();
	FUNC3(_packbuilder, ".", 0666, NULL, NULL);
	FUNC0(expected_fsyncs, p_fsync__cnt);
}