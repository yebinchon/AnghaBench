
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property_entry {size_t length; } ;


 int EINVAL ;
 struct property_entry* property_entry_get (struct property_entry const*,char const*) ;

__attribute__((used)) static int
property_entry_count_elems_of_size(const struct property_entry *props,
       const char *propname, size_t length)
{
 const struct property_entry *prop;

 prop = property_entry_get(props, propname);
 if (!prop)
  return -EINVAL;

 return prop->length / length;
}
