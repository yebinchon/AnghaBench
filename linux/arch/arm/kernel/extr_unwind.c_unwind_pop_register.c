
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_ctrl_block {int * vrs; scalar_t__ sp_high; int check_each_pop; } ;


 int URC_FAILURE ;
 int URC_OK ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int unwind_pop_register(struct unwind_ctrl_block *ctrl,
    unsigned long **vsp, unsigned int reg)
{
 if (unlikely(ctrl->check_each_pop))
  if (*vsp >= (unsigned long *)ctrl->sp_high)
   return -URC_FAILURE;

 ctrl->vrs[reg] = *(*vsp)++;
 return URC_OK;
}
