
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct property {int length; struct property* value; struct property* name; } ;


 int GFP_KERNEL ;
 int OF_DYNAMIC ;
 int kfree (struct property*) ;
 struct property* kstrdup (struct property*,int ) ;
 void* kzalloc (int,int ) ;
 int of_property_set_flag (struct property*,int ) ;

__attribute__((used)) static struct property *clone_property(struct property *prop, u32 prop_sz)
{
 struct property *new_prop;

 new_prop = kzalloc(sizeof(*new_prop), GFP_KERNEL);
 if (!new_prop)
  return ((void*)0);

 new_prop->name = kstrdup(prop->name, GFP_KERNEL);
 new_prop->value = kzalloc(prop_sz, GFP_KERNEL);
 if (!new_prop->name || !new_prop->value) {
  kfree(new_prop->name);
  kfree(new_prop->value);
  kfree(new_prop);
  return ((void*)0);
 }

 new_prop->length = prop_sz;



 return new_prop;
}
