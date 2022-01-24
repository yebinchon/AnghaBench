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
typedef  scalar_t__ u32 ;
struct kvm_hv {int /*<<< orphan*/  hv_lock; int /*<<< orphan*/  conn_to_evt; } ;
struct TYPE_2__ {struct kvm_hv hyperv; } ;
struct kvm {TYPE_1__ arch; } ;
struct eventfd_ctx {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 scalar_t__ FUNC0 (struct eventfd_ctx*) ; 
 int FUNC1 (struct eventfd_ctx*) ; 
 struct eventfd_ctx* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct eventfd_ctx*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct eventfd_ctx*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct kvm *kvm, u32 conn_id, int fd)
{
	struct kvm_hv *hv = &kvm->arch.hyperv;
	struct eventfd_ctx *eventfd;
	int ret;

	eventfd = FUNC2(fd);
	if (FUNC0(eventfd))
		return FUNC1(eventfd);

	FUNC5(&hv->hv_lock);
	ret = FUNC4(&hv->conn_to_evt, eventfd, conn_id, conn_id + 1,
			GFP_KERNEL_ACCOUNT);
	FUNC6(&hv->hv_lock);

	if (ret >= 0)
		return 0;

	if (ret == -ENOSPC)
		ret = -EEXIST;
	FUNC3(eventfd);
	return ret;
}