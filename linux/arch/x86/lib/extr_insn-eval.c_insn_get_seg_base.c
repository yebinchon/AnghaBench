
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct desc_struct {int dummy; } ;


 int INAT_SEG_REG_FS ;
 int INAT_SEG_REG_GS ;
 int MSR_FS_BASE ;
 int MSR_KERNEL_GS_BASE ;
 int get_desc (struct desc_struct*,short) ;
 unsigned long get_desc_base (struct desc_struct*) ;
 short get_segment_selector (struct pt_regs*,int) ;
 int rdmsrl (int ,unsigned long) ;
 scalar_t__ user_64bit_mode (struct pt_regs*) ;
 scalar_t__ v8086_mode (struct pt_regs*) ;

unsigned long insn_get_seg_base(struct pt_regs *regs, int seg_reg_idx)
{
 struct desc_struct desc;
 short sel;

 sel = get_segment_selector(regs, seg_reg_idx);
 if (sel < 0)
  return -1L;

 if (v8086_mode(regs))




  return (unsigned long)(sel << 4);

 if (user_64bit_mode(regs)) {




  unsigned long base;

  if (seg_reg_idx == INAT_SEG_REG_FS)
   rdmsrl(MSR_FS_BASE, base);
  else if (seg_reg_idx == INAT_SEG_REG_GS)




   rdmsrl(MSR_KERNEL_GS_BASE, base);
  else
   base = 0;
  return base;
 }


 if (!sel)
  return -1L;

 if (!get_desc(&desc, sel))
  return -1L;

 return get_desc_base(&desc);
}
