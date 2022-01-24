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
struct ref_lock {int /*<<< orphan*/  lk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct ref_lock *lock, const char *target)
{
	int ret = -1;
#ifndef NO_SYMLINK_HEAD
	char *ref_path = FUNC2(&lock->lk);
	FUNC4(ref_path);
	ret = FUNC3(target, ref_path);
	FUNC1(ref_path);

	if (ret)
		FUNC0(stderr, "no symlink - falling back to symbolic ref\n");
#endif
	return ret;
}