
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef void clk ;


 int WARN_ON (int) ;

__attribute__((used)) static int devm_clk_match(struct device *dev, void *res, void *data)
{
 struct clk **c = res;
 if (!c || !*c) {
  WARN_ON(!c || !*c);
  return 0;
 }
 return *c == data;
}
