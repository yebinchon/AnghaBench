
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long value; } ;
struct TYPE_4__ {int* bytes; } ;
struct insn {TYPE_1__ immediate; scalar_t__ next_byte; TYPE_2__ opcode; } ;



__attribute__((used)) static int insn_jump_into_range(struct insn *insn, unsigned long start, int len)
{
 unsigned long target = 0;

 switch (insn->opcode.bytes[0]) {
 case 0xe0:
 case 0xe1:
 case 0xe2:
 case 0xe3:
 case 0xe9:
 case 0xeb:
  break;
 case 0x0f:
  if ((insn->opcode.bytes[1] & 0xf0) == 0x80)
   break;
  return 0;
 default:
  if ((insn->opcode.bytes[0] & 0xf0) == 0x70)
   break;
  return 0;
 }
 target = (unsigned long)insn->next_byte + insn->immediate.value;

 return (start <= target && target <= start + len);
}
