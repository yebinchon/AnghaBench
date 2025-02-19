
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* str; } ;
struct TYPE_3__ {void* str; } ;
struct property_entry {scalar_t__ type; void* name; scalar_t__ is_array; int length; TYPE_2__ value; TYPE_1__ pointer; } ;


 scalar_t__ DEV_PROP_STRING ;
 int ENODATA ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* kmemdup (void const*,int ,int ) ;
 void* kstrdup (void*,int ) ;
 int property_copy_string_array (struct property_entry*,struct property_entry const*) ;
 int property_entry_free_data (struct property_entry*) ;
 void* property_get_pointer (struct property_entry const*) ;
 int property_set_pointer (struct property_entry*,void const*) ;

__attribute__((used)) static int property_entry_copy_data(struct property_entry *dst,
        const struct property_entry *src)
{
 const void *pointer = property_get_pointer(src);
 const void *new;
 int error;

 if (src->is_array) {
  if (!src->length)
   return -ENODATA;

  if (src->type == DEV_PROP_STRING) {
   error = property_copy_string_array(dst, src);
   if (error)
    return error;
   new = dst->pointer.str;
  } else {
   new = kmemdup(pointer, src->length, GFP_KERNEL);
   if (!new)
    return -ENOMEM;
  }
 } else if (src->type == DEV_PROP_STRING) {
  new = kstrdup(src->value.str, GFP_KERNEL);
  if (!new && src->value.str)
   return -ENOMEM;
 } else {
  new = pointer;
 }

 dst->length = src->length;
 dst->is_array = src->is_array;
 dst->type = src->type;

 property_set_pointer(dst, new);

 dst->name = kstrdup(src->name, GFP_KERNEL);
 if (!dst->name)
  goto out_free_data;

 return 0;

out_free_data:
 property_entry_free_data(dst);
 return -ENOMEM;
}
