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
 int /*<<< orphan*/  GIT_EINVALIDSPEC ; 
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  GIT_OBJECT_TAG ; 
 int /*<<< orphan*/  GIT_OBJECT_TREE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	FUNC1(GIT_EINVALIDSPEC, "53fc32d17276939fc79ed05badaef2db09990016", GIT_OBJECT_BLOB);
	FUNC0("53fc32d17276939fc79ed05badaef2db09990016", GIT_OBJECT_TREE,
		    "53fc32d17276939fc79ed05badaef2db09990016", GIT_OBJECT_TREE);
	FUNC1(GIT_EINVALIDSPEC, "53fc32d17276939fc79ed05badaef2db09990016", GIT_OBJECT_COMMIT);
	FUNC1(GIT_EINVALIDSPEC, "53fc32d17276939fc79ed05badaef2db09990016", GIT_OBJECT_TAG);
	FUNC1(GIT_EINVALIDSPEC, "53fc32d17276939fc79ed05badaef2db09990016", GIT_OBJECT_ANY);
}