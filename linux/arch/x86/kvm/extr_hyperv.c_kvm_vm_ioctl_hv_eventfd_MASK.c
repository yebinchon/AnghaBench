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
struct kvm_hyperv_eventfd {int flags; int conn_id; int /*<<< orphan*/  fd; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int KVM_HYPERV_CONN_ID_MASK ; 
 int KVM_HYPERV_EVENTFD_DEASSIGN ; 
 int FUNC0 (struct kvm*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvm*,int) ; 

int FUNC2(struct kvm *kvm, struct kvm_hyperv_eventfd *args)
{
	if ((args->flags & ~KVM_HYPERV_EVENTFD_DEASSIGN) ||
	    (args->conn_id & ~KVM_HYPERV_CONN_ID_MASK))
		return -EINVAL;

	if (args->flags == KVM_HYPERV_EVENTFD_DEASSIGN)
		return FUNC1(kvm, args->conn_id);
	return FUNC0(kvm, args->conn_id, args->fd);
}