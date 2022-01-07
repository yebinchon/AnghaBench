
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int r_info; scalar_t__ r_offset; } ;
typedef TYPE_1__ Elf32_Rel ;
typedef scalar_t__ Elf32_Addr ;


 int BUG () ;
 int ELF32_R_TYPE (int ) ;





 int __mem_to_opcode_arm (int ) ;
 int __mem_to_opcode_thumb16 (int) ;

__attribute__((used)) static bool is_zero_addend_relocation(Elf32_Addr base, const Elf32_Rel *rel)
{
 u32 *tval = (u32 *)(base + rel->r_offset);







 switch (ELF32_R_TYPE(rel->r_info)) {
  u16 upper, lower;

 case 129:
 case 128:
  upper = __mem_to_opcode_thumb16(((u16 *)tval)[0]);
  lower = __mem_to_opcode_thumb16(((u16 *)tval)[1]);

  return (upper & 0x7ff) == 0x7ff && (lower & 0x2fff) == 0x2ffe;

 case 132:
 case 130:
 case 131:
  return (__mem_to_opcode_arm(*tval) & 0xffffff) == 0xfffffe;
 }
 BUG();
}
