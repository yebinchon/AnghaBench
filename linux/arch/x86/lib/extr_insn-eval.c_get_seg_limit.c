
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct desc_struct {scalar_t__ g; } ;


 int get_desc (struct desc_struct*,short) ;
 unsigned long get_desc_limit (struct desc_struct*) ;
 short get_segment_selector (struct pt_regs*,int) ;
 scalar_t__ user_64bit_mode (struct pt_regs*) ;
 scalar_t__ v8086_mode (struct pt_regs*) ;

__attribute__((used)) static unsigned long get_seg_limit(struct pt_regs *regs, int seg_reg_idx)
{
 struct desc_struct desc;
 unsigned long limit;
 short sel;

 sel = get_segment_selector(regs, seg_reg_idx);
 if (sel < 0)
  return 0;

 if (user_64bit_mode(regs) || v8086_mode(regs))
  return -1L;

 if (!sel)
  return 0;

 if (!get_desc(&desc, sel))
  return 0;







 limit = get_desc_limit(&desc);
 if (desc.g)
  limit = (limit << 12) + 0xfff;

 return limit;
}
