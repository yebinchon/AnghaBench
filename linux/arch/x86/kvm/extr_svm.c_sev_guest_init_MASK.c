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
struct kvm_sev_info {int active; int asid; int /*<<< orphan*/  regions_list; } ;
struct kvm_sev_cmd {int /*<<< orphan*/  error; } ;
struct kvm {int dummy; } ;
struct TYPE_2__ {struct kvm_sev_info sev_info; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (struct kvm*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct kvm *kvm, struct kvm_sev_cmd *argp)
{
	struct kvm_sev_info *sev = &FUNC4(kvm)->sev_info;
	int asid, ret;

	ret = -EBUSY;
	if (FUNC5(sev->active))
		return ret;

	asid = FUNC2();
	if (asid < 0)
		return ret;

	ret = FUNC3(&argp->error);
	if (ret)
		goto e_free;

	sev->active = true;
	sev->asid = asid;
	FUNC0(&sev->regions_list);

	return 0;

e_free:
	FUNC1(asid);
	return ret;
}