
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_regs_struct {int dummy; } ;


 int PTRACE_GETREGS ;
 int ptrace (int ,int,int *,struct user_regs_struct*) ;
 int trycall (int ,char*) ;

__attribute__((used)) static inline void getregs(int pid, struct user_regs_struct *regs) {
    trycall(ptrace(PTRACE_GETREGS, pid, ((void*)0), regs), "ptrace getregs");
}
