
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tlb {int dummy; } ;
struct jit_block {int used; } ;
struct gen_state {int ip; struct jit_block* block; int capacity; } ;
typedef int addr_t ;
struct TYPE_2__ {int pid; } ;


 int PAGE_SIZE ;
 int TRACE (char*,int ,int) ;
 int assert (int) ;
 TYPE_1__* current ;
 int gen_end (struct gen_state*) ;
 int gen_exit (struct gen_state*) ;
 int gen_start (int,struct gen_state*) ;
 int gen_step32 (struct gen_state*,struct tlb*) ;

__attribute__((used)) static struct jit_block *jit_block_compile(addr_t ip, struct tlb *tlb) {
    struct gen_state state;
    TRACE("%d %08x --- compiling:\n", current->pid, ip);
    gen_start(ip, &state);
    while (1) {
        if (!gen_step32(&state, tlb))
            break;





        if (state.ip - ip >= PAGE_SIZE - 15) {
            gen_exit(&state);
            break;
        }
    }
    gen_end(&state);
    assert(state.ip - ip <= PAGE_SIZE);
    state.block->used = state.capacity;
    return state.block;
}
