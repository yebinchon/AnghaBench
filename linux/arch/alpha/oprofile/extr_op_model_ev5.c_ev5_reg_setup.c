
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_system_config {int dummy; } ;
struct op_register_config {int dummy; } ;
struct op_counter_config {int dummy; } ;


 int common_reg_setup (struct op_register_config*,struct op_counter_config*,struct op_system_config*,int,int) ;

__attribute__((used)) static void
ev5_reg_setup(struct op_register_config *reg,
       struct op_counter_config *ctr,
       struct op_system_config *sys)
{
 common_reg_setup(reg, ctr, sys, 19, 22);
}
