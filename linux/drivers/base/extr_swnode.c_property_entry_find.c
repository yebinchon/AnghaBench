
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property_entry {size_t length; } ;


 int EINVAL ;
 int ENODATA ;
 int EOVERFLOW ;
 void const* ERR_PTR (int ) ;
 struct property_entry* property_entry_get (struct property_entry const*,char const*) ;
 void* property_get_pointer (struct property_entry const*) ;

__attribute__((used)) static const void *property_entry_find(const struct property_entry *props,
           const char *propname, size_t length)
{
 const struct property_entry *prop;
 const void *pointer;

 prop = property_entry_get(props, propname);
 if (!prop)
  return ERR_PTR(-EINVAL);
 pointer = property_get_pointer(prop);
 if (!pointer)
  return ERR_PTR(-ENODATA);
 if (length > prop->length)
  return ERR_PTR(-EOVERFLOW);
 return pointer;
}
