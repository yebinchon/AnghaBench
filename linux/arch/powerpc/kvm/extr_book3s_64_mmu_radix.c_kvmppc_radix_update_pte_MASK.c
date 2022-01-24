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

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC1(struct kvm *kvm, pte_t *ptep,
				      unsigned long clr, unsigned long set,
				      unsigned long addr, unsigned int shift)
{
	return FUNC0(ptep, clr, set);
}