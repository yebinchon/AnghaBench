
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;
typedef scalar_t__ JSON_Status ;
typedef int JSON_Array ;


 scalar_t__ JSONFailure ;
 scalar_t__ JSONSuccess ;
 scalar_t__ json_array_replace_value (int *,size_t,int *) ;
 int json_value_free (int *) ;
 int * json_value_init_null () ;

JSON_Status json_array_replace_null(JSON_Array *array, size_t i) {
    JSON_Value *value = json_value_init_null();
    if (value == ((void*)0)) {
        return JSONFailure;
    }
    if (json_array_replace_value(array, i, value) == JSONFailure) {
        json_value_free(value);
        return JSONFailure;
    }
    return JSONSuccess;
}
