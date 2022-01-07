
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int davinci_cfg_reg (short const) ;

int davinci_cfg_reg_list(const short pins[])
{
 int i, error = -EINVAL;

 if (pins)
  for (i = 0; pins[i] >= 0; i++) {
   error = davinci_cfg_reg(pins[i]);
   if (error)
    break;
  }

 return error;
}
