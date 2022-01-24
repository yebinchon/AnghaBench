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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct kvm {int /*<<< orphan*/  srcu; } ;
typedef  int gfn_t ;
struct TYPE_2__ {int tss_addr; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int RMODE_TSS_SIZE ; 
 scalar_t__ TSS_BASE_SIZE ; 
 int TSS_IOPB_BASE_OFFSET ; 
 scalar_t__ TSS_REDIRECTION_SIZE ; 
 int FUNC0 (struct kvm*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct kvm*,int,scalar_t__*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC4 (struct kvm*) ; 

__attribute__((used)) static int FUNC5(struct kvm *kvm)
{
	gfn_t fn;
	u16 data = 0;
	int idx, r;

	idx = FUNC2(&kvm->srcu);
	fn = FUNC4(kvm)->tss_addr >> PAGE_SHIFT;
	r = FUNC0(kvm, fn, 0, PAGE_SIZE);
	if (r < 0)
		goto out;
	data = TSS_BASE_SIZE + TSS_REDIRECTION_SIZE;
	r = FUNC1(kvm, fn++, &data,
			TSS_IOPB_BASE_OFFSET, sizeof(u16));
	if (r < 0)
		goto out;
	r = FUNC0(kvm, fn++, 0, PAGE_SIZE);
	if (r < 0)
		goto out;
	r = FUNC0(kvm, fn, 0, PAGE_SIZE);
	if (r < 0)
		goto out;
	data = ~0;
	r = FUNC1(kvm, fn, &data,
				 RMODE_TSS_SIZE - 2 * PAGE_SIZE - 1,
				 sizeof(u8));
out:
	FUNC3(&kvm->srcu, idx);
	return r;
}