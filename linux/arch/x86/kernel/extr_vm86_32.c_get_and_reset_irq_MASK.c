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
struct TYPE_2__ {scalar_t__ tsk; } ;

/* Variables and functions */
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int irqbits ; 
 int /*<<< orphan*/  irqbits_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* vm86_irqs ; 

__attribute__((used)) static inline int FUNC4(int irqnumber)
{
	int bit;
	unsigned long flags;
	int ret = 0;

	if (FUNC1(irqnumber)) return 0;
	if (vm86_irqs[irqnumber].tsk != current) return 0;
	FUNC2(&irqbits_lock, flags);
	bit = irqbits & (1 << irqnumber);
	irqbits &= ~bit;
	if (bit) {
		FUNC0(irqnumber);
		ret = 1;
	}

	FUNC3(&irqbits_lock, flags);
	return ret;
}