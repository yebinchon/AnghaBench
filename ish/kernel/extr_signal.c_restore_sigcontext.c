
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigcontext_ {int flags; int ip; int sp; int bp; int si; int di; int dx; int cx; int bx; int ax; } ;
struct cpu_state {int eflags; int eip; int esp; int ebp; int esi; int edi; int edx; int ecx; int ebx; int eax; } ;


 int USE_FLAGS ;
 int collapse_flags (struct cpu_state*) ;

__attribute__((used)) static void restore_sigcontext(struct sigcontext_ *context, struct cpu_state *cpu) {
    cpu->eax = context->ax;
    cpu->ebx = context->bx;
    cpu->ecx = context->cx;
    cpu->edx = context->dx;
    cpu->edi = context->di;
    cpu->esi = context->si;
    cpu->ebp = context->bp;
    cpu->esp = context->sp;
    cpu->eip = context->ip;
    collapse_flags(cpu);



    cpu->eflags = (context->flags & 0b1010000110111010101) | (cpu->eflags & ~0b1010000110111010101);
}
