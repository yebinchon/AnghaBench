
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ JSON_Value_Type ;
typedef int JSON_Value ;
typedef int JSON_Object ;


 int * json_object_get_value (int const*,char const*) ;
 scalar_t__ json_value_get_type (int *) ;

int json_object_has_value_of_type(const JSON_Object *object, const char *name, JSON_Value_Type type) {
    JSON_Value *val = json_object_get_value(object, name);
    return val != ((void*)0) && json_value_get_type(val) == type;
}
