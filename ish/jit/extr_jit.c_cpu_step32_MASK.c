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
struct tlb {int dummy; } ;
struct cpu_state {int /*<<< orphan*/  eip; } ;
struct jit_frame {struct cpu_state cpu; } ;
struct jit_block {int dummy; } ;
struct gen_state {struct jit_block* block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gen_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct gen_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct gen_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct gen_state*,struct tlb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct jit_block*) ; 
 int FUNC5 (struct jit_block*,struct jit_frame*,struct tlb*) ; 

int FUNC6(struct cpu_state *cpu, struct tlb *tlb) {
    struct gen_state state;
    FUNC2(cpu->eip, &state);
    FUNC3(&state, tlb);
    FUNC1(&state);
    FUNC0(&state);

    struct jit_block *block = state.block;
    struct jit_frame frame = {.cpu = *cpu};
    int interrupt = FUNC5(block, &frame, tlb);
    *cpu = frame.cpu;
    FUNC4(NULL, block);
    return interrupt;
}