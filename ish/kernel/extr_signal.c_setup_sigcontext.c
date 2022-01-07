
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigcontext_ {scalar_t__ trapno; int oldmask; int cr2; int flags; int ip; int sp_at_signal; int sp; int bp; int si; int di; int dx; int cx; int bx; int ax; } ;
struct cpu_state {scalar_t__ trapno; int segfault_addr; int eflags; int eip; int esp; int ebp; int esi; int edi; int edx; int ecx; int ebx; int eax; } ;
struct TYPE_2__ {int blocked; } ;


 scalar_t__ INT_GPF ;
 int collapse_flags (struct cpu_state*) ;
 TYPE_1__* current ;

__attribute__((used)) static void setup_sigcontext(struct sigcontext_ *sc, struct cpu_state *cpu) {
    sc->ax = cpu->eax;
    sc->bx = cpu->ebx;
    sc->cx = cpu->ecx;
    sc->dx = cpu->edx;
    sc->di = cpu->edi;
    sc->si = cpu->esi;
    sc->bp = cpu->ebp;
    sc->sp = sc->sp_at_signal = cpu->esp;
    sc->ip = cpu->eip;
    collapse_flags(cpu);
    sc->flags = cpu->eflags;
    sc->trapno = cpu->trapno;
    if (cpu->trapno == INT_GPF)
        sc->cr2 = cpu->segfault_addr;

    sc->oldmask = current->blocked & 0xffffffff;
}
