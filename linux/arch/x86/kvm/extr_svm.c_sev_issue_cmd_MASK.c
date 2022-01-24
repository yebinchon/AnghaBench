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
struct kvm_sev_info {int /*<<< orphan*/  fd; } ;
struct kvm {int dummy; } ;
struct TYPE_2__ {struct kvm_sev_info sev_info; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,void*,int*) ; 
 TYPE_1__* FUNC1 (struct kvm*) ; 

__attribute__((used)) static int FUNC2(struct kvm *kvm, int id, void *data, int *error)
{
	struct kvm_sev_info *sev = &FUNC1(kvm)->sev_info;

	return FUNC0(sev->fd, id, data, error);
}