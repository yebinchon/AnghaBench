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
struct spu_state {int dummy; } ;
struct spu {int /*<<< orphan*/  register_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLASS0_INTR_MASK ; 
 unsigned long CLASS1_ENABLE_SEGMENT_FAULT_INTR ; 
 unsigned long CLASS1_ENABLE_STORAGE_FAULT_INTR ; 
 int /*<<< orphan*/  CLASS1_INTR_MASK ; 
 int /*<<< orphan*/  CLASS2_INTR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct spu*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct spu*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct spu_state *csa, struct spu *spu)
{
	unsigned long class1_mask = CLASS1_ENABLE_SEGMENT_FAULT_INTR |
	    CLASS1_ENABLE_STORAGE_FAULT_INTR;

	/* Save, Step 49:
	 * Restore, Step 22:
	 *     Reset and then enable interrupts, as
	 *     needed by OS.
	 *
	 *     This implementation enables only class1
	 *     (translation) interrupts.
	 */
	FUNC0(&spu->register_lock);
	FUNC3(spu, 0, CLASS0_INTR_MASK);
	FUNC3(spu, 1, CLASS1_INTR_MASK);
	FUNC3(spu, 2, CLASS2_INTR_MASK);
	FUNC2(spu, 0, 0ul);
	FUNC2(spu, 1, class1_mask);
	FUNC2(spu, 2, 0ul);
	FUNC1(&spu->register_lock);
}