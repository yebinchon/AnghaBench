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
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 

void FUNC1(void)
{
	FUNC0(
		"master@{upstream}",
		"be3563ae3f795b2b4353bcce3a527ad0a4f7f644",
		"refs/remotes/test/master");

	FUNC0(
		"@{-1}",
		"a4a7dce85cf63874e984719f4fdd239f5145052f",
		"refs/heads/br2");
}