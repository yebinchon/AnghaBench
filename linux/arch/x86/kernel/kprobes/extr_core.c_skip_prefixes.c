
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ kprobe_opcode_t ;
typedef int insn_byte_t ;
typedef int insn_attr_t ;


 int inat_get_opcode_attribute (int ) ;
 scalar_t__ inat_is_legacy_prefix (int ) ;
 scalar_t__ inat_is_rex_prefix (int ) ;

__attribute__((used)) static kprobe_opcode_t *skip_prefixes(kprobe_opcode_t *insn)
{
 insn_attr_t attr;

 attr = inat_get_opcode_attribute((insn_byte_t)*insn);
 while (inat_is_legacy_prefix(attr)) {
  insn++;
  attr = inat_get_opcode_attribute((insn_byte_t)*insn);
 }




 return insn;
}
