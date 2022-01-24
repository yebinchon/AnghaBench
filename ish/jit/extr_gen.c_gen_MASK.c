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
struct jit_block {unsigned long* code; } ;
struct gen_state {int size; int capacity; struct jit_block* block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct jit_block* FUNC2 (struct jit_block*,int) ; 

__attribute__((used)) static void FUNC3(struct gen_state *state, unsigned long thing) {
    FUNC0(state->size <= state->capacity);
    if (state->size >= state->capacity) {
        state->capacity *= 2;
        struct jit_block *bigger_block = FUNC2(state->block,
                sizeof(struct jit_block) + state->capacity * sizeof(unsigned long));
        if (bigger_block == NULL) {
            FUNC1("out of memory while jitting");
        }
        state->block = bigger_block;
    }
    FUNC0(state->size < state->capacity);
    state->block->code[state->size++] = thing;
}