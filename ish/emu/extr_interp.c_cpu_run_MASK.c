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
struct tlb {TYPE_1__* mem; } ;
struct cpu_state {int trapno; TYPE_1__* mem; } ;
struct TYPE_2__ {int changes; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int INT_NONE ; 
 int INT_TIMER ; 
 int FUNC0 (struct cpu_state*,struct tlb*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tlb*) ; 

void FUNC5(struct cpu_state *cpu) {
    int i = 0;
    struct tlb tlb = {.mem = cpu->mem};
    FUNC4(&tlb);
    FUNC2(&cpu->mem->lock);
    int changes = cpu->mem->changes;
    while (true) {
        int interrupt = FUNC0(cpu, &tlb);
        if (interrupt == INT_NONE && i++ >= 100000) {
            i = 0;
            interrupt = INT_TIMER;
        }
        if (interrupt != INT_NONE) {
            cpu->trapno = interrupt;
            FUNC3(&cpu->mem->lock);
            FUNC1(interrupt);
            FUNC2(&cpu->mem->lock);
            if (tlb.mem != cpu->mem)
                tlb.mem = cpu->mem;
            if (cpu->mem->changes != changes) {
                FUNC4(&tlb);
                changes = cpu->mem->changes;
            }
        }
    }
}