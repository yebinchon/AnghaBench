
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property_entry {scalar_t__ is_array; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (void const*) ;
 int PTR_ERR (void const*) ;
 int memcpy (char const**,void const*,size_t) ;
 size_t min (size_t,size_t) ;
 size_t property_entry_count_elems_of_size (struct property_entry const*,char const*,int) ;
 void* property_entry_find (struct property_entry const*,char const*,size_t) ;
 struct property_entry* property_entry_get (struct property_entry const*,char const*) ;

__attribute__((used)) static int property_entry_read_string_array(const struct property_entry *props,
         const char *propname,
         const char **strings, size_t nval)
{
 const struct property_entry *prop;
 const void *pointer;
 size_t array_len, length;


 prop = property_entry_get(props, propname);
 if (!prop)
  return -EINVAL;

 if (prop->is_array)

  array_len = property_entry_count_elems_of_size(props, propname,
         sizeof(const char *));
 else

  array_len = 1;


 if (!strings)
  return array_len;

 array_len = min(nval, array_len);
 length = array_len * sizeof(*strings);

 pointer = property_entry_find(props, propname, length);
 if (IS_ERR(pointer))
  return PTR_ERR(pointer);

 memcpy(strings, pointer, length);

 return array_len;
}
