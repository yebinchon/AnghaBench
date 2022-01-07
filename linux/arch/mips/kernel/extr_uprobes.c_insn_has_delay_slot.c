
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union mips_instruction {int dummy; } mips_instruction ;


 int __insn_has_delay_slot (union mips_instruction const) ;

__attribute__((used)) static inline int insn_has_delay_slot(const union mips_instruction insn)
{
 return __insn_has_delay_slot(insn);
}
