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
struct sev_data_decommission {unsigned int handle; } ;
struct sev_data_deactivate {unsigned int handle; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct sev_data_decommission*) ; 
 struct sev_data_decommission* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sev_data_decommission*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sev_data_decommission*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct kvm *kvm, unsigned int handle)
{
	struct sev_data_decommission *decommission;
	struct sev_data_deactivate *data;

	if (!handle)
		return;

	data = FUNC1(sizeof(*data), GFP_KERNEL);
	if (!data)
		return;

	/* deactivate handle */
	data->handle = handle;
	FUNC2(data, NULL);

	FUNC5();
	FUNC4(NULL);
	FUNC0(data);

	decommission = FUNC1(sizeof(*decommission), GFP_KERNEL);
	if (!decommission)
		return;

	/* decommission handle */
	decommission->handle = handle;
	FUNC3(decommission, NULL);

	FUNC0(decommission);
}