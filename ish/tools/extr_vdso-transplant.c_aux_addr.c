
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_regs_struct {int rsp; } ;
typedef int dword_t ;
typedef int addr_t ;


 int PTRACE_GETREGS ;
 scalar_t__ pt_read (int,int) ;
 int ptrace (int ,int,int *,struct user_regs_struct*) ;
 int trycall (int ,char*) ;

__attribute__((used)) static addr_t aux_addr(int pid, unsigned type) {
    struct user_regs_struct regs;
    trycall(ptrace(PTRACE_GETREGS, pid, ((void*)0), &regs), "ptrace get sp for aux");
    dword_t sp = (dword_t) regs.rsp;

    sp += 4;

    while (pt_read(pid, sp) != 0)
        sp += 4;
    sp += 4;

    while (pt_read(pid, sp) != 0)
        sp += 4;
    sp += 4;

    dword_t aux_type;
    while ((aux_type = pt_read(pid, sp)) != 0) {
        sp += 4;
        if (aux_type == type) {
            return sp;
        }
        sp += 4;
    }
    return 0;
}
