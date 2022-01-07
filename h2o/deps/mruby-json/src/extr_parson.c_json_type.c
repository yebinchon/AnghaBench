
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value_Type ;
typedef int JSON_Value ;


 int json_value_get_type (int const*) ;

JSON_Value_Type json_type(const JSON_Value *value) {
    return json_value_get_type(value);
}
