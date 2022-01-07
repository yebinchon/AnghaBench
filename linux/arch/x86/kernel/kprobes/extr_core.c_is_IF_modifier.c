
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kprobe_opcode_t ;


 int* skip_prefixes (int*) ;

__attribute__((used)) static int is_IF_modifier(kprobe_opcode_t *insn)
{

 insn = skip_prefixes(insn);

 switch (*insn) {
 case 0xfa:
 case 0xfb:
 case 0xcf:
 case 0x9d:
  return 1;
 }

 return 0;
}
