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
struct vas_instance {int vas_id; struct dentry* dbgdir; int /*<<< orphan*/ * dbgname; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  vas_debugfs ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct vas_instance *vinst)
{
	struct dentry *d;

	FUNC5();
	if (!vas_debugfs)
		return;

	vinst->dbgname = FUNC3(16, GFP_KERNEL);
	if (!vinst->dbgname)
		return;

	FUNC4(vinst->dbgname, 16, "v%d", vinst->vas_id);

	d = FUNC1(vinst->dbgname, vas_debugfs);
	if (FUNC0(d))
		goto free_name;

	vinst->dbgdir = d;
	return;

free_name:
	FUNC2(vinst->dbgname);
	vinst->dbgname = NULL;
	vinst->dbgdir = NULL;
}