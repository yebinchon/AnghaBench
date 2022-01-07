
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gen_state {unsigned long ip; } ;


 int gen (struct gen_state*,unsigned long) ;

void gen_exit(struct gen_state *state) {
    extern void gadget_exit(void);

    gen(state, (unsigned long) gadget_exit);
    gen(state, state->ip);
}
