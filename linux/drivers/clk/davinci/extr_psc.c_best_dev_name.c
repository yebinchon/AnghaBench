
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;


 char const* dev_name (struct device*) ;
 int of_property_read_string (int ,char*,char const**) ;

__attribute__((used)) static inline const char *best_dev_name(struct device *dev)
{
 const char *compatible;

 if (!of_property_read_string(dev->of_node, "compatible", &compatible))
  return compatible;

 return dev_name(dev);
}
