
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t count; struct TYPE_5__* items; } ;
typedef TYPE_1__ JSON_Array ;


 int json_value_free (TYPE_1__) ;
 int parson_free (TYPE_1__*) ;

__attribute__((used)) static void json_array_free(JSON_Array *array) {
    size_t i;
    for (i = 0; i < array->count; i++) {
        json_value_free(array->items[i]);
    }
    parson_free(array->items);
    parson_free(array);
}
