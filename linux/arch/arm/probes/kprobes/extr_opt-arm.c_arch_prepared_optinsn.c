
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch_optimized_insn {int * insn; } ;



int arch_prepared_optinsn(struct arch_optimized_insn *optinsn)
{
 return optinsn->insn != ((void*)0);
}
