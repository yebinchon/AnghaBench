
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARM_OPCODE_CONDTEST_FAIL ;
 int arm_check_condition (int,unsigned long) ;

__attribute__((used)) static unsigned long test_check_cc(int cc, unsigned long cpsr)
{
 int ret = arm_check_condition(cc << 28, cpsr);

 return (ret != ARM_OPCODE_CONDTEST_FAIL);
}
