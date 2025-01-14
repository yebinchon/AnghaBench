
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_block {void* addr; } ;
struct gen_state {int capacity; struct jit_block* block; scalar_t__ block_patch_ip; scalar_t__* jump_ip; void* ip; scalar_t__ size; } ;
typedef void* addr_t ;


 int JIT_BLOCK_INITIAL_CAPACITY ;
 struct jit_block* malloc (int) ;

void gen_start(addr_t addr, struct gen_state *state) {
    state->capacity = JIT_BLOCK_INITIAL_CAPACITY;
    state->size = 0;
    state->ip = addr;
    for (int i = 0; i <= 1; i++) {
        state->jump_ip[i] = 0;
    }
    state->block_patch_ip = 0;

    struct jit_block *block = malloc(sizeof(struct jit_block) + state->capacity * sizeof(unsigned long));
    state->block = block;
    block->addr = addr;
}
