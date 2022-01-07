
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_pt_regs {int faultinfo; } ;


 int get_skas_faultinfo (int,int *,unsigned long*) ;
 int segv (int ,int ,int,int *) ;

__attribute__((used)) static void handle_segv(int pid, struct uml_pt_regs *regs, unsigned long *aux_fp_regs)
{
 get_skas_faultinfo(pid, &regs->faultinfo, aux_fp_regs);
 segv(regs->faultinfo, 0, 1, ((void*)0));
}
