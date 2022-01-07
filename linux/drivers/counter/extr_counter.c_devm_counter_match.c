
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef void counter_device ;


 int WARN_ON (int) ;

__attribute__((used)) static int devm_counter_match(struct device *dev, void *res, void *data)
{
 struct counter_device **r = res;

 if (!r || !*r) {
  WARN_ON(!r || !*r);
  return 0;
 }

 return *r == data;
}
