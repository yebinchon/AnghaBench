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
 int /*<<< orphan*/  GIT_DIFF_FIND_DONT_IGNORE_WHITESPACE ; 
 int /*<<< orphan*/  GIT_DIFF_FIND_IGNORE_WHITESPACE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 

void FUNC1(void)
{
	/* empty files are identical when ignoring whitespace or not */
	FUNC0("", "", GIT_DIFF_FIND_DONT_IGNORE_WHITESPACE);
	FUNC0("", "",  GIT_DIFF_FIND_IGNORE_WHITESPACE);
}