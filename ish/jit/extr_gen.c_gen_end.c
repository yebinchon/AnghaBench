
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_block {unsigned long** jump_ip; unsigned long* code; unsigned long* old_jump_ip; scalar_t__ addr; scalar_t__ end_addr; int is_jetsam; int * page; int chain; int * jumps_from_links; int * jumps_from; } ;
struct gen_state {size_t* jump_ip; size_t block_patch_ip; scalar_t__ ip; struct jit_block* block; } ;


 int list_init (int *) ;

void gen_end(struct gen_state *state) {
    struct jit_block *block = state->block;
    for (int i = 0; i <= 1; i++) {
        if (state->jump_ip[i] != 0) {
            block->jump_ip[i] = &block->code[state->jump_ip[i]];
            block->old_jump_ip[i] = *block->jump_ip[i];
        } else {
            block->jump_ip[i] = ((void*)0);
        }

        list_init(&block->jumps_from[i]);
        list_init(&block->jumps_from_links[i]);
    }
    if (state->block_patch_ip != 0) {
        block->code[state->block_patch_ip] = (unsigned long) block;
    }
    if (block->addr != state->ip)
        block->end_addr = state->ip - 1;
    else
        block->end_addr = block->addr;
    list_init(&block->chain);
    block->is_jetsam = 0;
    for (int i = 0; i <= 1; i++) {
        list_init(&block->page[i]);
    }
}
