
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int raw_patch_instruction (unsigned int*,unsigned int) ;

__attribute__((used)) static int do_patch_instruction(unsigned int *addr, unsigned int instr)
{
 return raw_patch_instruction(addr, instr);
}
