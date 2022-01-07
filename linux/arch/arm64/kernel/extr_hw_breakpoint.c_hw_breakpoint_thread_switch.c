
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct debug_info {scalar_t__ bps_disabled; scalar_t__ wps_disabled; } ;
struct TYPE_5__ {struct debug_info debug; } ;
struct task_struct {TYPE_2__ thread; } ;
struct TYPE_4__ {struct debug_info debug; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;


 int AARCH64_DBG_REG_BCR ;
 int AARCH64_DBG_REG_WCR ;
 int DBG_ACTIVE_EL0 ;
 TYPE_3__* current ;
 int toggle_bp_registers (int ,int ,int) ;

void hw_breakpoint_thread_switch(struct task_struct *next)
{
 struct debug_info *current_debug_info, *next_debug_info;

 current_debug_info = &current->thread.debug;
 next_debug_info = &next->thread.debug;


 if (current_debug_info->bps_disabled != next_debug_info->bps_disabled)
  toggle_bp_registers(AARCH64_DBG_REG_BCR,
        DBG_ACTIVE_EL0,
        !next_debug_info->bps_disabled);


 if (current_debug_info->wps_disabled != next_debug_info->wps_disabled)
  toggle_bp_registers(AARCH64_DBG_REG_WCR,
        DBG_ACTIVE_EL0,
        !next_debug_info->wps_disabled);
}
