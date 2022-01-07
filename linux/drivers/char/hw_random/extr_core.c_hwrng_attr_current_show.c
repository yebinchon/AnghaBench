
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrng {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct hwrng*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct hwrng*) ;
 struct hwrng* get_current_rng () ;
 int put_rng (struct hwrng*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t hwrng_attr_current_show(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 ssize_t ret;
 struct hwrng *rng;

 rng = get_current_rng();
 if (IS_ERR(rng))
  return PTR_ERR(rng);

 ret = snprintf(buf, PAGE_SIZE, "%s\n", rng ? rng->name : "none");
 put_rng(rng);

 return ret;
}
