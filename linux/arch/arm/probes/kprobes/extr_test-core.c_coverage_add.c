
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int bits; } ;
struct TYPE_6__ {int bits; } ;
struct TYPE_5__ {int bits; } ;
struct decode_header {TYPE_3__ value; TYPE_2__ mask; TYPE_1__ type_regs; } ;
struct coverage_entry {unsigned int nesting; int matched; struct decode_header* header; } ;
typedef int kprobe_opcode_t ;
typedef enum decode_type { ____Placeholder_decode_type } decode_type ;
struct TYPE_8__ {int num_entries; struct coverage_entry* base; } ;




 int DECODE_TYPE_MASK ;




 TYPE_4__ coverage ;
 int coverage_add_registers (struct coverage_entry*,int) ;

__attribute__((used)) static void coverage_add(kprobe_opcode_t insn)
{
 struct coverage_entry *entry = coverage.base;
 struct coverage_entry *end = coverage.base + coverage.num_entries;
 bool matched = 0;
 unsigned nesting = 0;

 for (; entry < end; ++entry) {
  const struct decode_header *h = entry->header;
  enum decode_type type = h->type_regs.bits & DECODE_TYPE_MASK;

  if (entry->nesting > nesting)
   continue;

  if (entry->nesting < nesting)
   break;

  if (!matched) {
   if ((insn & h->mask.bits) != h->value.bits)
    continue;
   entry->matched = 1;
  }

  switch (type) {

  case 128:
   ++nesting;
   break;

  case 133:
  case 129:
  case 132:
   coverage_add_registers(entry, insn);
   return;

  case 131:
   matched = 1;
   break;

  case 130:
  default:
   return;
  }

 }
}
