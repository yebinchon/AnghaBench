
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int L2X0_CTRL ;
 int tango_set_l2_control (unsigned long) ;

__attribute__((used)) static void tango_l2c_write(unsigned long val, unsigned int reg)
{
 if (reg == L2X0_CTRL)
  tango_set_l2_control(val);
}
