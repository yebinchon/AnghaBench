
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int get_ric(unsigned int instr)
{
 return (instr >> 18) & 0x3;
}
