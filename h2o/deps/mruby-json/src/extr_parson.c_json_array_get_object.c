
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Object ;
typedef int JSON_Array ;


 int json_array_get_value (int const*,size_t) ;
 int * json_value_get_object (int ) ;

JSON_Object * json_array_get_object(const JSON_Array *array, size_t index) {
    return json_value_get_object(json_array_get_value(array, index));
}
