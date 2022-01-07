
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int cs; int ss; int ds; int es; int fs; } ;
struct kernel_vm86_regs {short ds; short es; short fs; short gs; } ;


 short EINVAL ;







 int ds ;
 int es ;
 int fs ;
 short get_user_gs (struct pt_regs*) ;
 int gs ;
 int savesegment (int ,unsigned short) ;
 scalar_t__ v8086_mode (struct pt_regs*) ;

__attribute__((used)) static short get_segment_selector(struct pt_regs *regs, int seg_reg_idx)
{
 struct kernel_vm86_regs *vm86regs = (struct kernel_vm86_regs *)regs;

 if (v8086_mode(regs)) {
  switch (seg_reg_idx) {
  case 134:
   return (unsigned short)(regs->cs & 0xffff);
  case 128:
   return (unsigned short)(regs->ss & 0xffff);
  case 133:
   return vm86regs->ds;
  case 132:
   return vm86regs->es;
  case 131:
   return vm86regs->fs;
  case 130:
   return vm86regs->gs;
  case 129:

  default:
   return -EINVAL;
  }
 }

 switch (seg_reg_idx) {
 case 134:
  return (unsigned short)(regs->cs & 0xffff);
 case 128:
  return (unsigned short)(regs->ss & 0xffff);
 case 133:
  return (unsigned short)(regs->ds & 0xffff);
 case 132:
  return (unsigned short)(regs->es & 0xffff);
 case 131:
  return (unsigned short)(regs->fs & 0xffff);
 case 130:




  return get_user_gs(regs);
 case 129:

 default:
  return -EINVAL;
 }

}
