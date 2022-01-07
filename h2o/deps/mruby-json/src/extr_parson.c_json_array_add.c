
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int count; int capacity; TYPE_1__** items; } ;
struct TYPE_7__ {int parent; } ;
typedef TYPE_1__ JSON_Value ;
typedef scalar_t__ JSON_Status ;
typedef TYPE_2__ JSON_Array ;


 scalar_t__ JSONFailure ;
 scalar_t__ JSONSuccess ;
 size_t MAX (int,int ) ;
 int STARTING_CAPACITY ;
 int json_array_get_wrapping_value (TYPE_2__*) ;
 scalar_t__ json_array_resize (TYPE_2__*,size_t) ;

__attribute__((used)) static JSON_Status json_array_add(JSON_Array *array, JSON_Value *value) {
    if (array->count >= array->capacity) {
        size_t new_capacity = MAX(array->capacity * 2, STARTING_CAPACITY);
        if (json_array_resize(array, new_capacity) == JSONFailure) {
            return JSONFailure;
        }
    }
    value->parent = json_array_get_wrapping_value(array);
    array->items[array->count] = value;
    array->count++;
    return JSONSuccess;
}
