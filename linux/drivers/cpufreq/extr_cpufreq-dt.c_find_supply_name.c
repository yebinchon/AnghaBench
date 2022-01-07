
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int id; int of_node; } ;


 scalar_t__ WARN_ON (int) ;
 int dev_dbg (struct device*,char*,int) ;
 struct property* of_find_property (struct device_node*,char*,int *) ;
 struct device_node* of_node_get (int ) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static const char *find_supply_name(struct device *dev)
{
 struct device_node *np;
 struct property *pp;
 int cpu = dev->id;
 const char *name = ((void*)0);

 np = of_node_get(dev->of_node);


 if (WARN_ON(!np))
  return ((void*)0);


 if (!cpu) {
  pp = of_find_property(np, "cpu0-supply", ((void*)0));
  if (pp) {
   name = "cpu0";
   goto node_put;
  }
 }

 pp = of_find_property(np, "cpu-supply", ((void*)0));
 if (pp) {
  name = "cpu";
  goto node_put;
 }

 dev_dbg(dev, "no regulator for cpu%d\n", cpu);
node_put:
 of_node_put(np);
 return name;
}
