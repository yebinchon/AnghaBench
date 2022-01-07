
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double number; } ;
struct TYPE_5__ {TYPE_1__ value; int type; int * parent; } ;
typedef TYPE_2__ JSON_Value ;


 int JSONNumber ;
 scalar_t__ parson_malloc (int) ;

JSON_Value * json_value_init_number(double number) {
    JSON_Value *new_value = ((void*)0);
    if ((number * 0.0) != 0.0) {
        return ((void*)0);
    }
    new_value = (JSON_Value*)parson_malloc(sizeof(JSON_Value));
    if (new_value == ((void*)0)) {
        return ((void*)0);
    }
    new_value->parent = ((void*)0);
    new_value->type = JSONNumber;
    new_value->value.number = number;
    return new_value;
}
