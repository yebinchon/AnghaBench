
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cycle_count_down; int cycle_count_reg_offset; int mapping_base; } ;
struct TYPE_3__ {int cycle_count_down; int cycle_count_offset; } ;


 TYPE_2__ timer_info ;
 int timer_mapping_base ;
 TYPE_1__* vdso_data ;

__attribute__((used)) static void get_timer_node_info(void)
{
 timer_mapping_base = timer_info.mapping_base;
 vdso_data->cycle_count_offset =
  timer_info.cycle_count_reg_offset;
 vdso_data->cycle_count_down =
  timer_info.cycle_count_down;
}
