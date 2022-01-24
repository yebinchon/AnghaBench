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
 char* external_diff_cmd_cfg ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC2(void)
{
	static const char *external_diff_cmd = NULL;
	static int done_preparing = 0;

	if (done_preparing)
		return external_diff_cmd;
	external_diff_cmd = FUNC1(FUNC0("GIT_EXTERNAL_DIFF"));
	if (!external_diff_cmd)
		external_diff_cmd = external_diff_cmd_cfg;
	done_preparing = 1;
	return external_diff_cmd;
}