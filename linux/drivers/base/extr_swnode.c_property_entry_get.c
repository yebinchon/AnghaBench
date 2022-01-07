
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property_entry {scalar_t__ name; } ;


 int strcmp (char const*,scalar_t__) ;

__attribute__((used)) static const struct property_entry *
property_entry_get(const struct property_entry *prop, const char *name)
{
 if (!prop)
  return ((void*)0);

 for (; prop->name; prop++)
  if (!strcmp(name, prop->name))
   return prop;

 return ((void*)0);
}
