
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;


 double json_value_get_number (int const*) ;

double json_number (const JSON_Value *value) {
    return json_value_get_number(value);
}
