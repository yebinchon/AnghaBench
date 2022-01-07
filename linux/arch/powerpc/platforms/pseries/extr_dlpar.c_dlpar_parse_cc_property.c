
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int length; int value; int name; } ;
struct cc_workarea {int prop_offset; int prop_length; int name_offset; } ;


 int GFP_KERNEL ;
 int be32_to_cpu (int ) ;
 int dlpar_free_cc_property (struct property*) ;
 int kmemdup (char*,int,int ) ;
 int kstrdup (char*,int ) ;
 struct property* kzalloc (int,int ) ;

__attribute__((used)) static struct property *dlpar_parse_cc_property(struct cc_workarea *ccwa)
{
 struct property *prop;
 char *name;
 char *value;

 prop = kzalloc(sizeof(*prop), GFP_KERNEL);
 if (!prop)
  return ((void*)0);

 name = (char *)ccwa + be32_to_cpu(ccwa->name_offset);
 prop->name = kstrdup(name, GFP_KERNEL);
 if (!prop->name) {
  dlpar_free_cc_property(prop);
  return ((void*)0);
 }

 prop->length = be32_to_cpu(ccwa->prop_length);
 value = (char *)ccwa + be32_to_cpu(ccwa->prop_offset);
 prop->value = kmemdup(value, prop->length, GFP_KERNEL);
 if (!prop->value) {
  dlpar_free_cc_property(prop);
  return ((void*)0);
 }

 return prop;
}
