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
struct jit_block {size_t addr; size_t end_addr; int /*<<< orphan*/ * page; int /*<<< orphan*/  chain; scalar_t__ used; } ;
struct jit {int num_blocks; int hash_size; int /*<<< orphan*/  mem; int /*<<< orphan*/ * hash; int /*<<< orphan*/  mem_used; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/ * FUNC1 (struct jit*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct jit*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct jit *jit, struct jit_block *block) {
    jit->mem_used += block->used;
    jit->num_blocks++;
    // target an average hash chain length of 1-2
    if (jit->num_blocks >= jit->hash_size * 2)
        FUNC2(jit, jit->hash_size * 2);

    FUNC3(&jit->hash[block->addr % jit->hash_size], &block->chain);
    if (FUNC4(jit->mem, FUNC0(block->addr)) == NULL)
        return;
    FUNC3(FUNC1(jit, FUNC0(block->addr), 0), &block->page[0]);
    if (FUNC0(block->addr) != FUNC0(block->end_addr))
        FUNC3(FUNC1(jit, FUNC0(block->end_addr), 1), &block->page[1]);
}