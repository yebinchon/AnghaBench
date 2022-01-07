
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_regs_struct {int dummy; } ;


 int PTRACE_SETREGS ;
 int ptrace (int ,int,int *,struct user_regs_struct*) ;
 int trycall (int ,char*) ;

__attribute__((used)) static inline void setregs(int pid, struct user_regs_struct *regs) {
    trycall(ptrace(PTRACE_SETREGS, pid, ((void*)0), regs), "ptrace setregs");
}
