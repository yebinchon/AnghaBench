
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;
typedef scalar_t__ JSON_Status ;
typedef int JSON_Array ;


 scalar_t__ JSONFailure ;
 scalar_t__ JSONSuccess ;
 scalar_t__ json_array_append_value (int *,int *) ;
 int json_value_free (int *) ;
 int * json_value_init_string (char const*) ;

JSON_Status json_array_append_string(JSON_Array *array, const char *string) {
    JSON_Value *value = json_value_init_string(string);
    if (value == ((void*)0)) {
        return JSONFailure;
    }
    if (json_array_append_value(array, value) == JSONFailure) {
        json_value_free(value);
        return JSONFailure;
    }
    return JSONSuccess;
}
