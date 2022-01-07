
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __patch_instruction (unsigned int*,unsigned int,unsigned int*) ;

int raw_patch_instruction(unsigned int *addr, unsigned int instr)
{
 return __patch_instruction(addr, instr, addr);
}
