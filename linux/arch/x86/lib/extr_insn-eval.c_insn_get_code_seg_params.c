
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct desc_struct {int type; int l; int d; } ;


 int BIT (int) ;
 int EINVAL ;
 int INAT_SEG_REG_CS ;
 int INSN_CODE_SEG_PARAMS (int,int) ;
 int get_desc (struct desc_struct*,short) ;
 short get_segment_selector (struct pt_regs*,int ) ;
 scalar_t__ v8086_mode (struct pt_regs*) ;

int insn_get_code_seg_params(struct pt_regs *regs)
{
 struct desc_struct desc;
 short sel;

 if (v8086_mode(regs))

  return INSN_CODE_SEG_PARAMS(2, 2);

 sel = get_segment_selector(regs, INAT_SEG_REG_CS);
 if (sel < 0)
  return sel;

 if (!get_desc(&desc, sel))
  return -EINVAL;






 if (!(desc.type & BIT(3)))
  return -EINVAL;

 switch ((desc.l << 1) | desc.d) {
 case 0:



  return INSN_CODE_SEG_PARAMS(2, 2);
 case 1:



  return INSN_CODE_SEG_PARAMS(4, 4);
 case 2:



  return INSN_CODE_SEG_PARAMS(4, 8);
 case 3:

 default:
  return -EINVAL;
 }
}
