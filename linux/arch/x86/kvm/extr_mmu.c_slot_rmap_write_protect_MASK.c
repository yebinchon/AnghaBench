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
struct kvm_rmap_head {int dummy; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kvm*,struct kvm_rmap_head*,int) ; 

__attribute__((used)) static bool FUNC1(struct kvm *kvm,
				    struct kvm_rmap_head *rmap_head)
{
	return FUNC0(kvm, rmap_head, false);
}