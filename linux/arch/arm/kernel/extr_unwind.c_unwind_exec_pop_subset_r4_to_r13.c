
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_ctrl_block {unsigned long* vrs; } ;


 size_t SP ;
 int URC_FAILURE ;
 int URC_OK ;
 scalar_t__ unwind_pop_register (struct unwind_ctrl_block*,unsigned long**,int) ;

__attribute__((used)) static int unwind_exec_pop_subset_r4_to_r13(struct unwind_ctrl_block *ctrl,
      unsigned long mask)
{
 unsigned long *vsp = (unsigned long *)ctrl->vrs[SP];
 int load_sp, reg = 4;

 load_sp = mask & (1 << (13 - 4));
 while (mask) {
  if (mask & 1)
   if (unwind_pop_register(ctrl, &vsp, reg))
    return -URC_FAILURE;
  mask >>= 1;
  reg++;
 }
 if (!load_sp)
  ctrl->vrs[SP] = (unsigned long)vsp;

 return URC_OK;
}
