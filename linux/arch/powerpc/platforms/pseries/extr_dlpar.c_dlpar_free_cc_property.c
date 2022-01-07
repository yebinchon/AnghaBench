
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {struct property* value; struct property* name; } ;


 int kfree (struct property*) ;

void dlpar_free_cc_property(struct property *prop)
{
 kfree(prop->name);
 kfree(prop->value);
 kfree(prop);
}
