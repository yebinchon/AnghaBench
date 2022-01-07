
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;
typedef int JSON_Array ;


 int * json_value_get_array (int const*) ;

JSON_Array * json_array (const JSON_Value *value) {
    return json_value_get_array(value);
}
