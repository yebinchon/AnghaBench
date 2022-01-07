
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_stack {int a5; } ;
struct sigcontext {int sc_a5; } ;
struct pt_regs {int dummy; } ;



__attribute__((used)) static inline void save_a5_state(struct sigcontext *sc, struct pt_regs *regs)
{
 sc->sc_a5 = ((struct switch_stack *)regs - 1)->a5;
}
