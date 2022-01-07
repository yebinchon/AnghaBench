
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ** items; } ;
typedef int JSON_Value ;
typedef TYPE_1__ JSON_Array ;


 size_t json_array_get_count (TYPE_1__ const*) ;

JSON_Value * json_array_get_value(const JSON_Array *array, size_t index) {
    if (array == ((void*)0) || index >= json_array_get_count(array)) {
        return ((void*)0);
    }
    return array->items[index];
}
