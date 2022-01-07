
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;
typedef int JSON_Object ;


 int * json_value_get_object (int const*) ;

JSON_Object * json_object (const JSON_Value *value) {
    return json_value_get_object(value);
}
