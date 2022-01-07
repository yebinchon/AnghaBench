
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int __mem_to_opcode_thumb16 (int ) ;
 int is_wide_instruction (int ) ;

__attribute__((used)) static unsigned long next_instruction(unsigned long pc)
{






 return pc + 4;
}
