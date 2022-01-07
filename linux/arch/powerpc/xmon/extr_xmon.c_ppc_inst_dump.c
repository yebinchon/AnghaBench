
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int generic_inst_dump (unsigned long,long,int,int ) ;
 int print_insn_powerpc ;

__attribute__((used)) static int
ppc_inst_dump(unsigned long adr, long count, int praddr)
{
 return generic_inst_dump(adr, count, praddr, print_insn_powerpc);
}
