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
struct TYPE_2__ {void* int_mask_class2_RW; void* int_mask_class1_RW; void* int_mask_class0_RW; } ;
struct spu_state {TYPE_1__ priv1; } ;
struct spu {int /*<<< orphan*/ * irqs; int /*<<< orphan*/  flags; int /*<<< orphan*/  register_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPU_CONTEXT_FAULT_PENDING ; 
 int /*<<< orphan*/  SPU_CONTEXT_SWITCH_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (struct spu*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct spu*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC8(struct spu_state *csa, struct spu *spu)
{
	/* Save, Step 3:
	 * Restore, Step 2:
	 *     Save INT_Mask_class0 in CSA.
	 *     Write INT_MASK_class0 with value of 0.
	 *     Save INT_Mask_class1 in CSA.
	 *     Write INT_MASK_class1 with value of 0.
	 *     Save INT_Mask_class2 in CSA.
	 *     Write INT_MASK_class2 with value of 0.
	 *     Synchronize all three interrupts to be sure
	 *     we no longer execute a handler on another CPU.
	 */
	FUNC3(&spu->register_lock);
	if (csa) {
		csa->priv1.int_mask_class0_RW = FUNC5(spu, 0);
		csa->priv1.int_mask_class1_RW = FUNC5(spu, 1);
		csa->priv1.int_mask_class2_RW = FUNC5(spu, 2);
	}
	FUNC6(spu, 0, 0ul);
	FUNC6(spu, 1, 0ul);
	FUNC6(spu, 2, 0ul);
	FUNC1();
	FUNC4(&spu->register_lock);

	/*
	 * This flag needs to be set before calling synchronize_irq so
	 * that the update will be visible to the relevant handlers
	 * via a simple load.
	 */
	FUNC2(SPU_CONTEXT_SWITCH_PENDING, &spu->flags);
	FUNC0(SPU_CONTEXT_FAULT_PENDING, &spu->flags);
	FUNC7(spu->irqs[0]);
	FUNC7(spu->irqs[1]);
	FUNC7(spu->irqs[2]);
}