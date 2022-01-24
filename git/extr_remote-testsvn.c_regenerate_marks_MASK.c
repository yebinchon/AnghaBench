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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  marksfilename ; 
 int /*<<< orphan*/  note2mark_cb ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
	int ret;
	FILE *marksfile = FUNC3(marksfilename, "w+");

	ret = FUNC2(NULL, 0, note2mark_cb, marksfile);
	if (ret)
		FUNC0("Regeneration of marks failed, returned %d.", ret);
	FUNC1(marksfile);
}