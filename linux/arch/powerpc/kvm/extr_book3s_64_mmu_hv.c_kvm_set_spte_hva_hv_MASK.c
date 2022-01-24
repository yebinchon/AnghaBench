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
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  hva_handler_fn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kvm*) ; 
 int /*<<< orphan*/  kvm_unmap_radix ; 
 int /*<<< orphan*/  kvm_unmap_rmapp ; 

void FUNC2(struct kvm *kvm, unsigned long hva, pte_t pte)
{
	hva_handler_fn handler;

	handler = FUNC1(kvm) ? kvm_unmap_radix : kvm_unmap_rmapp;
	FUNC0(kvm, hva, handler);
}