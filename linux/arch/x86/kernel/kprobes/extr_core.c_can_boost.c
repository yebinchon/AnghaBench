
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nbytes; int* bytes; } ;
struct insn {TYPE_1__ opcode; int attr; } ;
typedef int kprobe_opcode_t ;


 int inat_is_address_size_prefix (int ) ;
 scalar_t__ search_exception_tables (unsigned long) ;
 int test_bit (int,unsigned long*) ;
 scalar_t__ twobyte_is_boostable ;
 scalar_t__ unlikely (int ) ;

int can_boost(struct insn *insn, void *addr)
{
 kprobe_opcode_t opcode;

 if (search_exception_tables((unsigned long)addr))
  return 0;


 if (insn->opcode.nbytes == 2)
  return test_bit(insn->opcode.bytes[1],
    (unsigned long *)twobyte_is_boostable);

 if (insn->opcode.nbytes != 1)
  return 0;


 if (unlikely(inat_is_address_size_prefix(insn->attr)))
  return 0;

 opcode = insn->opcode.bytes[0];

 switch (opcode & 0xf0) {
 case 0x60:

  return (opcode != 0x62);
 case 0x70:
  return 0;
 case 0x90:
  return opcode != 0x9a;
 case 0xc0:

  return (0xc1 < opcode && opcode < 0xcc) || opcode == 0xcf;
 case 0xd0:

  return (opcode == 0xd4 || opcode == 0xd5 || opcode == 0xd7);
 case 0xe0:

  return ((opcode & 0x04) || opcode == 0xea);
 case 0xf0:

  return (opcode == 0xf5 || (0xf7 < opcode && opcode < 0xfe));
 default:

  return (opcode != 0x2e && opcode != 0x9a);
 }
}
