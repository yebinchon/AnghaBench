
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nbytes; } ;
struct insn {TYPE_1__ immediate; } ;
struct arch_uprobe {scalar_t__ insn; } ;


 scalar_t__ insn_offset_immediate (struct insn*) ;
 int memset (scalar_t__,int ,int ) ;

__attribute__((used)) static void branch_clear_offset(struct arch_uprobe *auprobe, struct insn *insn)
{
 memset(auprobe->insn + insn_offset_immediate(insn),
  0, insn->immediate.nbytes);
}
