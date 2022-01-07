
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int registered; } ;
typedef TYPE_1__ jerryx_register_result ;
struct TYPE_6__ {int value; int * name; } ;
typedef TYPE_2__ jerryx_property_entry ;


 int jerry_release_value (int ) ;

void
jerryx_release_property_entry (const jerryx_property_entry entries[],
                               const jerryx_register_result register_result)
{
  for (uint32_t idx = register_result.registered;
       ((entries + idx) != ((void*)0)) && (entries[idx].name != ((void*)0));
       idx++)
  {
    jerry_release_value (entries[idx].value);
  }
}
