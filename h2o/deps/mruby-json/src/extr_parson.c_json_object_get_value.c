
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;
typedef int JSON_Object ;


 int * json_object_nget_value (int const*,char const*,int ) ;
 int strlen (char const*) ;

JSON_Value * json_object_get_value(const JSON_Object *object, const char *name) {
    if (object == ((void*)0) || name == ((void*)0)) {
        return ((void*)0);
    }
    return json_object_nget_value(object, name, strlen(name));
}
