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
struct sev_data_activate {unsigned int handle; int asid; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 int /*<<< orphan*/  FUNC0 (struct sev_data_activate*) ; 
 struct sev_data_activate* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kvm*) ; 
 int FUNC3 (struct sev_data_activate*,int*) ; 
 int FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct kvm *kvm, unsigned int handle, int *error)
{
	struct sev_data_activate *data;
	int asid = FUNC2(kvm);
	int ret;

	FUNC5();

	ret = FUNC4(error);
	if (ret)
		return ret;

	data = FUNC1(sizeof(*data), GFP_KERNEL_ACCOUNT);
	if (!data)
		return -ENOMEM;

	/* activate ASID on the given handle */
	data->handle = handle;
	data->asid   = asid;
	ret = FUNC3(data, error);
	FUNC0(data);

	return ret;
}