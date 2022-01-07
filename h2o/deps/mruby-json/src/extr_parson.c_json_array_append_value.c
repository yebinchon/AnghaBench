
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * parent; } ;
typedef TYPE_1__ JSON_Value ;
typedef int JSON_Status ;
typedef int JSON_Array ;


 int JSONFailure ;
 int json_array_add (int *,TYPE_1__*) ;

JSON_Status json_array_append_value(JSON_Array *array, JSON_Value *value) {
    if (array == ((void*)0) || value == ((void*)0) || value->parent != ((void*)0)) {
        return JSONFailure;
    }
    return json_array_add(array, value);
}
