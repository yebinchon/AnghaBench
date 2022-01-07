
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int instruction_is_store(unsigned int instr)
{
 unsigned int mask;

 mask = 0x10000000;
 if ((instr & 0xfc000000) == 0x7c000000)
  mask = 0x100;
 return (instr & mask) != 0;
}
