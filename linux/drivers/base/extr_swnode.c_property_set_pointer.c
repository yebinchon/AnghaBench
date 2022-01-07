
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {void const* str; int u64_data; int u32_data; int u16_data; int u8_data; } ;
struct TYPE_3__ {void const* str; void const* u64_data; void const* u32_data; void const* u16_data; void const* u8_data; } ;
struct property_entry {int type; TYPE_2__ value; TYPE_1__ pointer; int is_array; } ;
__attribute__((used)) static void
property_set_pointer(struct property_entry *prop, const void *pointer)
{
 switch (prop->type) {
 case 128:
  if (prop->is_array)
   prop->pointer.u8_data = pointer;
  else
   prop->value.u8_data = *((u8 *)pointer);
  break;
 case 131:
  if (prop->is_array)
   prop->pointer.u16_data = pointer;
  else
   prop->value.u16_data = *((u16 *)pointer);
  break;
 case 130:
  if (prop->is_array)
   prop->pointer.u32_data = pointer;
  else
   prop->value.u32_data = *((u32 *)pointer);
  break;
 case 129:
  if (prop->is_array)
   prop->pointer.u64_data = pointer;
  else
   prop->value.u64_data = *((u64 *)pointer);
  break;
 case 132:
  if (prop->is_array)
   prop->pointer.str = pointer;
  else
   prop->value.str = pointer;
  break;
 default:
  break;
 }
}
