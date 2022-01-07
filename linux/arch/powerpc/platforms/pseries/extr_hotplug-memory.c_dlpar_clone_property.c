
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct property {int length; void* value; int name; } ;


 int GFP_KERNEL ;
 int OF_DYNAMIC ;
 int dlpar_free_property (struct property*) ;
 int kstrdup (int ,int ) ;
 void* kzalloc (int,int ) ;
 int memcpy (void*,void*,int) ;
 int of_property_set_flag (struct property*,int ) ;

__attribute__((used)) static struct property *dlpar_clone_property(struct property *prop,
          u32 prop_size)
{
 struct property *new_prop;

 new_prop = kzalloc(sizeof(*new_prop), GFP_KERNEL);
 if (!new_prop)
  return ((void*)0);

 new_prop->name = kstrdup(prop->name, GFP_KERNEL);
 new_prop->value = kzalloc(prop_size, GFP_KERNEL);
 if (!new_prop->name || !new_prop->value) {
  dlpar_free_property(new_prop);
  return ((void*)0);
 }

 memcpy(new_prop->value, prop->value, prop->length);
 new_prop->length = prop_size;

 of_property_set_flag(new_prop, OF_DYNAMIC);
 return new_prop;
}
