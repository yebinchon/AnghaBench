
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bug_insn_t ;


 int __INSN_LENGTH_32 ;
 int __INSN_LENGTH_MASK ;
 scalar_t__ probe_kernel_address (int*,int) ;

__attribute__((used)) static inline unsigned long get_break_insn_length(unsigned long pc)
{
 bug_insn_t insn;

 if (probe_kernel_address((bug_insn_t *)pc, insn))
  return 0;
 return (((insn & __INSN_LENGTH_MASK) == __INSN_LENGTH_32) ? 4UL : 2UL);
}
