
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; size_t capacity; int ** items; } ;
typedef int JSON_Value ;
typedef int JSON_Status ;
typedef TYPE_1__ JSON_Array ;


 int JSONFailure ;
 int JSONSuccess ;
 int memcpy (int **,int **,int) ;
 int parson_free (int **) ;
 scalar_t__ parson_malloc (size_t) ;

__attribute__((used)) static JSON_Status json_array_resize(JSON_Array *array, size_t new_capacity) {
    JSON_Value **new_items = ((void*)0);
    if (new_capacity == 0) {
        return JSONFailure;
    }
    new_items = (JSON_Value**)parson_malloc(new_capacity * sizeof(JSON_Value*));
    if (new_items == ((void*)0)) {
        return JSONFailure;
    }
    if (array->items != ((void*)0) && array->count > 0) {
        memcpy(new_items, array->items, array->count * sizeof(JSON_Value*));
    }
    parson_free(array->items);
    array->items = new_items;
    array->capacity = new_capacity;
    return JSONSuccess;
}
