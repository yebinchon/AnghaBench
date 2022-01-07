
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subsys_private {struct bus_type* bus; } ;
struct kobject {int dummy; } ;
struct bus_type {int * p; } ;


 int kfree (struct subsys_private*) ;
 struct subsys_private* to_subsys_private (struct kobject*) ;

__attribute__((used)) static void bus_release(struct kobject *kobj)
{
 struct subsys_private *priv = to_subsys_private(kobj);
 struct bus_type *bus = priv->bus;

 kfree(priv);
 bus->p = ((void*)0);
}
