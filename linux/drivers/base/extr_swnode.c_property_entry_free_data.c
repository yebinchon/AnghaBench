
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void const* str; } ;
struct TYPE_4__ {void const** str; } ;
struct property_entry {scalar_t__ type; int length; void const* name; TYPE_1__ value; TYPE_2__ pointer; scalar_t__ is_array; } ;


 scalar_t__ DEV_PROP_STRING ;
 int kfree (void const*) ;
 void* property_get_pointer (struct property_entry const*) ;

__attribute__((used)) static void property_entry_free_data(const struct property_entry *p)
{
 const void *pointer = property_get_pointer(p);
 size_t i, nval;

 if (p->is_array) {
  if (p->type == DEV_PROP_STRING && p->pointer.str) {
   nval = p->length / sizeof(const char *);
   for (i = 0; i < nval; i++)
    kfree(p->pointer.str[i]);
  }
  kfree(pointer);
 } else if (p->type == DEV_PROP_STRING) {
  kfree(p->value.str);
 }
 kfree(p->name);
}
