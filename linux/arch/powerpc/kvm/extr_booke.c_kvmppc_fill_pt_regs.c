
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* ulong ;
struct pt_regs {void* link; void* msr; void* nip; void** gpr; } ;


 int memset (struct pt_regs*,int ,int) ;

__attribute__((used)) static void kvmppc_fill_pt_regs(struct pt_regs *regs)
{
 ulong r1, ip, msr, lr;

 asm("mr %0, 1" : "=r"(r1));
 asm("mflr %0" : "=r"(lr));
 asm("mfmsr %0" : "=r"(msr));
 asm("bl 1f; 1: mflr %0" : "=r"(ip));

 memset(regs, 0, sizeof(*regs));
 regs->gpr[1] = r1;
 regs->nip = ip;
 regs->msr = msr;
 regs->link = lr;
}
