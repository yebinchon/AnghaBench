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
struct openpic {int /*<<< orphan*/  mmio; int /*<<< orphan*/  reg_base; int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_MMIO_BUS ; 
 int /*<<< orphan*/  OPENPIC_REG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mpic_mmio_ops ; 

__attribute__((used)) static void FUNC2(struct openpic *opp)
{
	FUNC1(&opp->mmio, &mpic_mmio_ops);

	FUNC0(opp->kvm, KVM_MMIO_BUS,
				opp->reg_base, OPENPIC_REG_SIZE,
				&opp->mmio);
}