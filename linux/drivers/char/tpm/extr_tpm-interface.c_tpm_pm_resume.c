
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 struct tpm_chip* dev_get_drvdata (struct device*) ;

int tpm_pm_resume(struct device *dev)
{
 struct tpm_chip *chip = dev_get_drvdata(dev);

 if (chip == ((void*)0))
  return -ENODEV;

 return 0;
}
