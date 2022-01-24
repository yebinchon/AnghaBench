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
struct path {int dummy; } ;
struct file {int /*<<< orphan*/ * f_op; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct file*) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct file* FUNC3 (struct path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct file*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  simple_dir_operations ; 

__attribute__((used)) static int FUNC7(struct path *path)
{
	int ret;
	struct file *filp;

	ret = FUNC5(0);
	if (ret < 0)
		return ret;

	/*
	 * get references for dget and mntget, will be released
	 * in error path of *_open().
	 */
	filp = FUNC3(path, O_RDONLY, FUNC2());
	if (FUNC0(filp)) {
		FUNC6(ret);
		return FUNC1(filp);
	}

	filp->f_op = &simple_dir_operations;
	FUNC4(ret, filp);
	return ret;
}