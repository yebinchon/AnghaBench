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
typedef  int /*<<< orphan*/  u32 ;
struct kvm_hv {int /*<<< orphan*/  hv_lock; int /*<<< orphan*/  conn_to_evt; } ;
struct TYPE_2__ {struct kvm_hv hyperv; } ;
struct kvm {int /*<<< orphan*/  srcu; TYPE_1__ arch; } ;
struct eventfd_ctx {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct eventfd_ctx*) ; 
 struct eventfd_ctx* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct kvm *kvm, u32 conn_id)
{
	struct kvm_hv *hv = &kvm->arch.hyperv;
	struct eventfd_ctx *eventfd;

	FUNC2(&hv->hv_lock);
	eventfd = FUNC1(&hv->conn_to_evt, conn_id);
	FUNC3(&hv->hv_lock);

	if (!eventfd)
		return -ENOENT;

	FUNC4(&kvm->srcu);
	FUNC0(eventfd);
	return 0;
}