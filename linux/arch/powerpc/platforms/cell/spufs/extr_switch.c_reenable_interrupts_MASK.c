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
struct TYPE_2__ {int /*<<< orphan*/  int_mask_class2_RW; int /*<<< orphan*/  int_mask_class1_RW; int /*<<< orphan*/  int_mask_class0_RW; } ;
struct spu_state {TYPE_1__ priv1; } ;
struct spu {int /*<<< orphan*/  register_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct spu*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct spu_state *csa, struct spu *spu)
{
	/* Restore, Step 75:
	 *     Re-enable SPU interrupts.
	 */
	FUNC0(&spu->register_lock);
	FUNC2(spu, 0, csa->priv1.int_mask_class0_RW);
	FUNC2(spu, 1, csa->priv1.int_mask_class1_RW);
	FUNC2(spu, 2, csa->priv1.int_mask_class2_RW);
	FUNC1(&spu->register_lock);
}