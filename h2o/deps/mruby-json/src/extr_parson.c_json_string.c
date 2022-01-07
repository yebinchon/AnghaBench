
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;


 char const* json_value_get_string (int const*) ;

const char * json_string (const JSON_Value *value) {
    return json_value_get_string(value);
}
