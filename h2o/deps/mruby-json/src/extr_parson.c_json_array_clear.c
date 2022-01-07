
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ count; } ;
typedef int JSON_Status ;
typedef TYPE_1__ JSON_Array ;


 int JSONFailure ;
 int JSONSuccess ;
 size_t json_array_get_count (TYPE_1__*) ;
 int json_array_get_value (TYPE_1__*,size_t) ;
 int json_value_free (int ) ;

JSON_Status json_array_clear(JSON_Array *array) {
    size_t i = 0;
    if (array == ((void*)0)) {
        return JSONFailure;
    }
    for (i = 0; i < json_array_get_count(array); i++) {
        json_value_free(json_array_get_value(array, i));
    }
    array->count = 0;
    return JSONSuccess;
}
