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
typedef  int /*<<< orphan*/  u32 ;
struct mpic {int /*<<< orphan*/ * cpuregs; int /*<<< orphan*/  reg_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct mpic*) ; 

__attribute__((used)) static inline void FUNC2(struct mpic *mpic, unsigned int reg, u32 value)
{
	unsigned int cpu = FUNC1(mpic);

	FUNC0(mpic->reg_type, &mpic->cpuregs[cpu], reg, value);
}