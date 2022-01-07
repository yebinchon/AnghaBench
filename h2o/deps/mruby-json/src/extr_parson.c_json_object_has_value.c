
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Object ;


 int * json_object_get_value (int const*,char const*) ;

int json_object_has_value (const JSON_Object *object, const char *name) {
    return json_object_get_value(object, name) != ((void*)0);
}
