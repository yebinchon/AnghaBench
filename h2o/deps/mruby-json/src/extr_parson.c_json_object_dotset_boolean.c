
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;
typedef scalar_t__ JSON_Status ;
typedef int JSON_Object ;


 scalar_t__ JSONFailure ;
 scalar_t__ JSONSuccess ;
 scalar_t__ json_object_dotset_value (int *,char const*,int *) ;
 int json_value_free (int *) ;
 int * json_value_init_boolean (int) ;

JSON_Status json_object_dotset_boolean(JSON_Object *object, const char *name, int boolean) {
    JSON_Value *value = json_value_init_boolean(boolean);
    if (value == ((void*)0)) {
        return JSONFailure;
    }
    if (json_object_dotset_value(object, name, value) == JSONFailure) {
        json_value_free(value);
        return JSONFailure;
    }
    return JSONSuccess;
}
