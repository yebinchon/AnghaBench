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
 int /*<<< orphan*/  GIT_OPT_DISABLE_PACK_KEEP_FILE_CHECKS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int git_disable_pack_keep_file_checks ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(void)
{
	FUNC0(!git_disable_pack_keep_file_checks);
	FUNC1(FUNC2(GIT_OPT_DISABLE_PACK_KEEP_FILE_CHECKS, true));
	FUNC0(git_disable_pack_keep_file_checks);
}