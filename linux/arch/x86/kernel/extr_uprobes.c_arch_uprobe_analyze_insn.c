
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mm_struct {int dummy; } ;
struct insn {int length; } ;
struct TYPE_2__ {int fixups; int ilen; } ;
struct arch_uprobe {int * ops; TYPE_1__ defparam; } ;


 int ENOSYS ;
 int MODRM_REG (struct insn*) ;
 int OPCODE1 (struct insn*) ;
 int UPROBE_FIX_CALL ;
 int UPROBE_FIX_IP ;
 int UPROBE_FIX_SETF ;
 int branch_setup_xol_ops (struct arch_uprobe*,struct insn*) ;
 int default_xol_ops ;
 int is_64bit_mm (struct mm_struct*) ;
 int push_setup_xol_ops (struct arch_uprobe*,struct insn*) ;
 int riprel_analyze (struct arch_uprobe*,struct insn*) ;
 int uprobe_init_insn (struct arch_uprobe*,struct insn*,int ) ;

int arch_uprobe_analyze_insn(struct arch_uprobe *auprobe, struct mm_struct *mm, unsigned long addr)
{
 struct insn insn;
 u8 fix_ip_or_call = UPROBE_FIX_IP;
 int ret;

 ret = uprobe_init_insn(auprobe, &insn, is_64bit_mm(mm));
 if (ret)
  return ret;

 ret = branch_setup_xol_ops(auprobe, &insn);
 if (ret != -ENOSYS)
  return ret;

 ret = push_setup_xol_ops(auprobe, &insn);
 if (ret != -ENOSYS)
  return ret;





 switch (OPCODE1(&insn)) {
 case 0x9d:
  auprobe->defparam.fixups |= UPROBE_FIX_SETF;
  break;
 case 0xc3:
 case 0xcb:
 case 0xc2:
 case 0xca:
 case 0xea:
  fix_ip_or_call = 0;
  break;
 case 0x9a:
  fix_ip_or_call = UPROBE_FIX_CALL;
  break;
 case 0xff:
  switch (MODRM_REG(&insn)) {
  case 2: case 3:
   fix_ip_or_call = UPROBE_FIX_CALL;
   break;
  case 4: case 5:
   fix_ip_or_call = 0;
   break;
  }

 default:
  riprel_analyze(auprobe, &insn);
 }

 auprobe->defparam.ilen = insn.length;
 auprobe->defparam.fixups |= fix_ip_or_call;

 auprobe->ops = &default_xol_ops;
 return 0;
}
