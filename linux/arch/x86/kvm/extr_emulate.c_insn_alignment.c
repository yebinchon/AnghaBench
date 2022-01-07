
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct x86_emulate_ctxt {int d; } ;


 int AlignMask ;




 scalar_t__ likely (int) ;

__attribute__((used)) static unsigned insn_alignment(struct x86_emulate_ctxt *ctxt, unsigned size)
{
 u64 alignment = ctxt->d & AlignMask;

 if (likely(size < 16))
  return 1;

 switch (alignment) {
 case 128:
 case 129:
  return 1;
 case 130:
  return 16;
 case 131:
 default:
  return size;
 }
}
