
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_system_config {int dummy; } ;
struct op_counter_config {scalar_t__ count; } ;


 int num_counters ;
 scalar_t__* reset_value ;

__attribute__((used)) static int fsl_emb_reg_setup(struct op_counter_config *ctr,
        struct op_system_config *sys,
        int num_ctrs)
{
 int i;

 num_counters = num_ctrs;






 for (i = 0; i < num_counters; ++i)
  reset_value[i] = 0x80000000UL - ctr[i].count;

 return 0;
}
