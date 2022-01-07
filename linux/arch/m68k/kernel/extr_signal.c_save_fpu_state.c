
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigcontext {int dummy; } ;
struct pt_regs {int dummy; } ;



__attribute__((used)) static inline void save_fpu_state(struct sigcontext *sc, struct pt_regs *regs)
{
}
