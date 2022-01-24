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
struct sev_data_launch_finish {int /*<<< orphan*/  handle; } ;
struct kvm_sev_info {int /*<<< orphan*/  handle; } ;
struct kvm_sev_cmd {int /*<<< orphan*/  error; } ;
struct kvm {int dummy; } ;
struct TYPE_2__ {struct kvm_sev_info sev_info; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOTTY ; 
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 int /*<<< orphan*/  SEV_CMD_LAUNCH_FINISH ; 
 int /*<<< orphan*/  FUNC0 (struct sev_data_launch_finish*) ; 
 struct sev_data_launch_finish* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*) ; 
 int FUNC3 (struct kvm*,int /*<<< orphan*/ ,struct sev_data_launch_finish*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (struct kvm*) ; 

__attribute__((used)) static int FUNC5(struct kvm *kvm, struct kvm_sev_cmd *argp)
{
	struct kvm_sev_info *sev = &FUNC4(kvm)->sev_info;
	struct sev_data_launch_finish *data;
	int ret;

	if (!FUNC2(kvm))
		return -ENOTTY;

	data = FUNC1(sizeof(*data), GFP_KERNEL_ACCOUNT);
	if (!data)
		return -ENOMEM;

	data->handle = sev->handle;
	ret = FUNC3(kvm, SEV_CMD_LAUNCH_FINISH, data, &argp->error);

	FUNC0(data);
	return ret;
}