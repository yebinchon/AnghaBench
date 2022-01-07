
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 scalar_t__ MC_TYPE_JBUS ;
 scalar_t__ MC_TYPE_SAFARI ;
 int chmc_destroy (struct platform_device*,void*) ;
 void* dev_get_drvdata (int *) ;
 int jbusmc_destroy (struct platform_device*,void*) ;
 scalar_t__ mc_type ;

__attribute__((used)) static int us3mc_remove(struct platform_device *op)
{
 void *p = dev_get_drvdata(&op->dev);

 if (p) {
  if (mc_type == MC_TYPE_SAFARI)
   chmc_destroy(op, p);
  else if (mc_type == MC_TYPE_JBUS)
   jbusmc_destroy(op, p);
 }
 return 0;
}
