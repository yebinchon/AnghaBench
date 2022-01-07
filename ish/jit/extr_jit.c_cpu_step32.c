
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlb {int dummy; } ;
struct cpu_state {int eip; } ;
struct jit_frame {struct cpu_state cpu; } ;
struct jit_block {int dummy; } ;
struct gen_state {struct jit_block* block; } ;


 int gen_end (struct gen_state*) ;
 int gen_exit (struct gen_state*) ;
 int gen_start (int ,struct gen_state*) ;
 int gen_step32 (struct gen_state*,struct tlb*) ;
 int jit_block_free (int *,struct jit_block*) ;
 int jit_enter (struct jit_block*,struct jit_frame*,struct tlb*) ;

int cpu_step32(struct cpu_state *cpu, struct tlb *tlb) {
    struct gen_state state;
    gen_start(cpu->eip, &state);
    gen_step32(&state, tlb);
    gen_exit(&state);
    gen_end(&state);

    struct jit_block *block = state.block;
    struct jit_frame frame = {.cpu = *cpu};
    int interrupt = jit_enter(block, &frame, tlb);
    *cpu = frame.cpu;
    jit_block_free(((void*)0), block);
    return interrupt;
}
