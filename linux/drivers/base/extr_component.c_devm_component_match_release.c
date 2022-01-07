
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int component_match_release (struct device*,void*) ;

__attribute__((used)) static void devm_component_match_release(struct device *dev, void *res)
{
 component_match_release(dev, res);
}
