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
typedef  int /*<<< orphan*/  uint32_t ;
struct binder_ref_data {int dummy; } ;
struct binder_ref {struct binder_ref_data data; } ;
struct binder_proc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct binder_ref*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct binder_ref*) ; 
 struct binder_ref* FUNC2 (struct binder_proc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct binder_ref*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct binder_proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct binder_proc*) ; 

__attribute__((used)) static int FUNC6(struct binder_proc *proc,
		uint32_t desc, bool increment, bool strong,
		struct binder_ref_data *rdata)
{
	int ret = 0;
	struct binder_ref *ref;
	bool delete_ref = false;

	FUNC4(proc);
	ref = FUNC2(proc, desc, strong);
	if (!ref) {
		ret = -EINVAL;
		goto err_no_ref;
	}
	if (increment)
		ret = FUNC3(ref, strong, NULL);
	else
		delete_ref = FUNC0(ref, strong);

	if (rdata)
		*rdata = ref->data;
	FUNC5(proc);

	if (delete_ref)
		FUNC1(ref);
	return ret;

err_no_ref:
	FUNC5(proc);
	return ret;
}