
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int * iasq; int * iaoq; int cr27; int ipsw; int ior; int isr; int iir; int sar; int * sr; int fr; int gr; } ;
struct parisc_gdb_regs {int iasq_b; int iaoq_b; int iasq_f; int iaoq_f; int cr27; int ipsw; int ior; int isr; int iir; int sar; int sr7; int sr6; int sr5; int sr4; int sr3; int sr2; int sr1; int sr0; int fr; int gpr; } ;


 int memcpy (int ,int ,int) ;

void gdb_regs_to_pt_regs(unsigned long *gdb_regs, struct pt_regs *regs)
{
 struct parisc_gdb_regs *gr = (struct parisc_gdb_regs *)gdb_regs;


 memcpy(regs->gr, gr->gpr, sizeof(regs->gr));
 memcpy(regs->fr, gr->fr, sizeof(regs->fr));

 regs->sr[0] = gr->sr0;
 regs->sr[1] = gr->sr1;
 regs->sr[2] = gr->sr2;
 regs->sr[3] = gr->sr3;
 regs->sr[4] = gr->sr4;
 regs->sr[5] = gr->sr5;
 regs->sr[6] = gr->sr6;
 regs->sr[7] = gr->sr7;

 regs->sar = gr->sar;
 regs->iir = gr->iir;
 regs->isr = gr->isr;
 regs->ior = gr->ior;
 regs->ipsw = gr->ipsw;
 regs->cr27 = gr->cr27;

 regs->iaoq[0] = gr->iaoq_f;
 regs->iasq[0] = gr->iasq_f;

 regs->iaoq[1] = gr->iaoq_b;
 regs->iasq[1] = gr->iasq_b;
}
