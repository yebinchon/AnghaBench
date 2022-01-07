
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ENODEV ;
 scalar_t__ MC_TYPE_JBUS ;
 scalar_t__ MC_TYPE_SAFARI ;
 int chmc_probe (struct platform_device*) ;
 int jbusmc_probe (struct platform_device*) ;
 scalar_t__ mc_type ;

__attribute__((used)) static int us3mc_probe(struct platform_device *op)
{
 if (mc_type == MC_TYPE_SAFARI)
  return chmc_probe(op);
 else if (mc_type == MC_TYPE_JBUS)
  return jbusmc_probe(op);
 return -ENODEV;
}
