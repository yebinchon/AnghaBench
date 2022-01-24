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
struct kvm {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kvm*,int) ; 

__attribute__((used)) static bool FUNC1(struct kvm *kvm)
{
	/* At least one ECC subfunction must be present */
	return FUNC0(kvm, 32) ||
	       FUNC0(kvm, 33) ||
	       FUNC0(kvm, 34) ||
	       FUNC0(kvm, 40) ||
	       FUNC0(kvm, 41);

}