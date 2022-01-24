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
 int /*<<< orphan*/  CLASS1_INTR_MASK ; 
 int /*<<< orphan*/  CLASS2_INTR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct spu*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct spu*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct spu_state *csa, struct spu *spu)
{
	/* Restore, Step 49:
	 *     Write INT_MASK_class0 with value of 0.
	 *     Write INT_MASK_class1 with value of 0.
	 *     Write INT_MASK_class2 with value of 0.
	 *     Write INT_STAT_class0 with value of -1.
	 *     Write INT_STAT_class1 with value of -1.
	 *     Write INT_STAT_class2 with value of -1.
	 */
	FUNC0(&spu->register_lock);
	FUNC2(spu, 0, 0ul);
	FUNC2(spu, 1, 0ul);
	FUNC2(spu, 2, 0ul);
	FUNC3(spu, 0, CLASS0_INTR_MASK);
	FUNC3(spu, 1, CLASS1_INTR_MASK);
	FUNC3(spu, 2, CLASS2_INTR_MASK);
	FUNC1(&spu->register_lock);
}