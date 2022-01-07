
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_params {scalar_t__ is_write; int Op2; int CRm; int CRn; int Op1; int Op0; } ;


 int kvm_pr_unimpl (char*,int ,int ,int ,int ,int ,char*) ;

__attribute__((used)) static inline void print_sys_reg_instr(const struct sys_reg_params *p)
{

 kvm_pr_unimpl(" { Op0(%2u), Op1(%2u), CRn(%2u), CRm(%2u), Op2(%2u), func_%s },\n",
        p->Op0, p->Op1, p->CRn, p->CRm, p->Op2, p->is_write ? "write" : "read");
}
