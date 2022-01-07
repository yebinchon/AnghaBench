
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {scalar_t__ timeout_adjusted; int timeout_d; int timeout_c; int timeout_b; int timeout_a; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int jiffies_to_usecs (int ) ;
 int sprintf (char*,char*,int,int,int,int,char*) ;
 struct tpm_chip* to_tpm_chip (struct device*) ;

__attribute__((used)) static ssize_t timeouts_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct tpm_chip *chip = to_tpm_chip(dev);

 return sprintf(buf, "%d %d %d %d [%s]\n",
         jiffies_to_usecs(chip->timeout_a),
         jiffies_to_usecs(chip->timeout_b),
         jiffies_to_usecs(chip->timeout_c),
         jiffies_to_usecs(chip->timeout_d),
         chip->timeout_adjusted
         ? "adjusted" : "original");
}
