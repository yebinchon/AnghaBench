
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__** items; } ;
struct TYPE_8__ {int * parent; } ;
typedef TYPE_1__ JSON_Value ;
typedef int JSON_Status ;
typedef TYPE_2__ JSON_Array ;


 int JSONFailure ;
 int JSONSuccess ;
 size_t json_array_get_count (TYPE_2__*) ;
 int json_array_get_value (TYPE_2__*,size_t) ;
 int * json_array_get_wrapping_value (TYPE_2__*) ;
 int json_value_free (int ) ;

JSON_Status json_array_replace_value(JSON_Array *array, size_t ix, JSON_Value *value) {
    if (array == ((void*)0) || value == ((void*)0) || value->parent != ((void*)0) || ix >= json_array_get_count(array)) {
        return JSONFailure;
    }
    json_value_free(json_array_get_value(array, ix));
    value->parent = json_array_get_wrapping_value(array);
    array->items[ix] = value;
    return JSONSuccess;
}
