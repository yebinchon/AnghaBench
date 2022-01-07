
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerpc_operand {int flags; long shift; } ;


 int PPC_OPERAND_OPTIONAL_VALUE ;

__attribute__((used)) static inline long
ppc_optional_operand_value (const struct powerpc_operand *operand)
{
  if ((operand->flags & PPC_OPERAND_OPTIONAL_VALUE) != 0)
    return (operand+1)->shift;
  return 0;
}
