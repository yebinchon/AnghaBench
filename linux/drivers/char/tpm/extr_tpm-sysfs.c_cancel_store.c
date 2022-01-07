
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tpm_chip {TYPE_1__* ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int (* cancel ) (struct tpm_chip*) ;} ;


 int stub1 (struct tpm_chip*) ;
 struct tpm_chip* to_tpm_chip (struct device*) ;
 int tpm_put_ops (struct tpm_chip*) ;
 scalar_t__ tpm_try_get_ops (struct tpm_chip*) ;

__attribute__((used)) static ssize_t cancel_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct tpm_chip *chip = to_tpm_chip(dev);

 if (tpm_try_get_ops(chip))
  return 0;

 chip->ops->cancel(chip);
 tpm_put_ops(chip);
 return count;
}
