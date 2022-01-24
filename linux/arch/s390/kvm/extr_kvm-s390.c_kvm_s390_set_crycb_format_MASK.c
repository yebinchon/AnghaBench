#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  crycbd; scalar_t__ crycb; } ;
struct TYPE_3__ {TYPE_2__ crypto; } ;
struct kvm {TYPE_1__ arch; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CRYCB_FORMAT1 ; 
 int /*<<< orphan*/  CRYCB_FORMAT2 ; 
 int /*<<< orphan*/  CRYCB_FORMAT_MASK ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,int) ; 

__attribute__((used)) static void FUNC2(struct kvm *kvm)
{
	kvm->arch.crypto.crycbd = (__u32)(unsigned long) kvm->arch.crypto.crycb;

	/* Clear the CRYCB format bits - i.e., set format 0 by default */
	kvm->arch.crypto.crycbd &= ~(CRYCB_FORMAT_MASK);

	/* Check whether MSAX3 is installed */
	if (!FUNC1(kvm, 76))
		return;

	if (FUNC0())
		kvm->arch.crypto.crycbd |= CRYCB_FORMAT2;
	else
		kvm->arch.crypto.crycbd |= CRYCB_FORMAT1;
}