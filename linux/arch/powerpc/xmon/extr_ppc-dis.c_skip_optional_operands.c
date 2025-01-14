
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerpc_operand {int flags; } ;
typedef int ppc_cpu_t ;


 int PPC_OPERAND_NEXT ;
 int PPC_OPERAND_OPTIONAL ;
 scalar_t__ operand_value_powerpc (struct powerpc_operand const*,unsigned long,int ) ;
 struct powerpc_operand* powerpc_operands ;
 scalar_t__ ppc_optional_operand_value (struct powerpc_operand const*) ;

__attribute__((used)) static int
skip_optional_operands (const unsigned char *opindex,
   unsigned long insn, ppc_cpu_t dialect)
{
  const struct powerpc_operand *operand;

  for (; *opindex != 0; opindex++)
    {
      operand = &powerpc_operands[*opindex];
      if ((operand->flags & PPC_OPERAND_NEXT) != 0
   || ((operand->flags & PPC_OPERAND_OPTIONAL) != 0
       && operand_value_powerpc (operand, insn, dialect) !=
   ppc_optional_operand_value (operand)))
 return 0;
    }

  return 1;
}
