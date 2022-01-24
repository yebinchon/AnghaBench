#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vas_window {int winid; int /*<<< orphan*/ * dbgname; struct dentry* dbgdir; TYPE_1__* vinst; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dbgdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC2 (char*,int,struct dentry*,struct vas_window*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  hvwc_fops ; 
 int /*<<< orphan*/  info_fops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*,int) ; 

void FUNC7(struct vas_window *window)
{
	struct dentry *f, *d;

	if (!window->vinst->dbgdir)
		return;

	window->dbgname = FUNC5(16, GFP_KERNEL);
	if (!window->dbgname)
		return;

	FUNC6(window->dbgname, 16, "w%d", window->winid);

	d = FUNC1(window->dbgname, window->vinst->dbgdir);
	if (FUNC0(d))
		goto free_name;

	window->dbgdir = d;

	f = FUNC2("info", 0444, d, window, &info_fops);
	if (FUNC0(f))
		goto remove_dir;

	f = FUNC2("hvwc", 0444, d, window, &hvwc_fops);
	if (FUNC0(f))
		goto remove_dir;

	return;

remove_dir:
	FUNC3(window->dbgdir);
	window->dbgdir = NULL;

free_name:
	FUNC4(window->dbgname);
	window->dbgname = NULL;
}