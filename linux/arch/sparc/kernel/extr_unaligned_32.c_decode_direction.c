
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum direction { ____Placeholder_direction } direction ;


 int both ;
 int load ;
 int store ;

__attribute__((used)) static inline enum direction decode_direction(unsigned int insn)
{
 unsigned long tmp = (insn >> 21) & 1;

 if(!tmp)
  return load;
 else {
  if(((insn>>19)&0x3f) == 15)
   return both;
  else
   return store;
 }
}
