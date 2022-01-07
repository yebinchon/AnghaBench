
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerpc_operand {int (* extract ) (unsigned long,int,int*) ;} ;
struct powerpc_opcode {unsigned long mask; unsigned long opcode; int flags; int deprecated; unsigned char* operands; } ;
typedef int ppc_cpu_t ;


 int powerpc_num_opcodes ;
 struct powerpc_opcode* powerpc_opcodes ;
 struct powerpc_operand* powerpc_operands ;
 int stub1 (unsigned long,int,int*) ;

__attribute__((used)) static const struct powerpc_opcode *
lookup_powerpc (unsigned long insn, ppc_cpu_t dialect)
{
  const struct powerpc_opcode *opcode;
  const struct powerpc_opcode *opcode_end;

  opcode_end = powerpc_opcodes + powerpc_num_opcodes;

  for (opcode = powerpc_opcodes; opcode < opcode_end; ++opcode)
    {
      const unsigned char *opindex;
      const struct powerpc_operand *operand;
      int invalid;

      if ((insn & opcode->mask) != opcode->opcode
   || (dialect != (ppc_cpu_t) -1
       && ((opcode->flags & dialect) == 0
    || (opcode->deprecated & dialect) != 0)))
 continue;


      invalid = 0;
      for (opindex = opcode->operands; *opindex != 0; opindex++)
 {
   operand = powerpc_operands + *opindex;
   if (operand->extract)
     (*operand->extract) (insn, dialect, &invalid);
 }
      if (invalid)
 continue;

      return opcode;
    }

  return ((void*)0);
}
