
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct property_entry {int dummy; } ;


 scalar_t__ IS_ERR (void const*) ;
 int PTR_ERR (void const*) ;
 int memcpy (int *,void const*,size_t) ;
 void* property_entry_find (struct property_entry const*,char const*,size_t) ;

__attribute__((used)) static int property_entry_read_u64_array(const struct property_entry *props,
      const char *propname,
      u64 *values, size_t nval)
{
 const void *pointer;
 size_t length = nval * sizeof(*values);

 pointer = property_entry_find(props, propname, length);
 if (IS_ERR(pointer))
  return PTR_ERR(pointer);

 memcpy(values, pointer, length);
 return 0;
}
