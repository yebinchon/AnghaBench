
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__ PRNG_MODE_TDES ;
 scalar_t__ prng_mode ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t prng_mode_show(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 if (prng_mode == PRNG_MODE_TDES)
  return snprintf(buf, PAGE_SIZE, "TDES\n");
 else
  return snprintf(buf, PAGE_SIZE, "SHA512\n");
}
