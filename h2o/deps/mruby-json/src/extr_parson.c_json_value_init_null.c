
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int * parent; } ;
typedef TYPE_1__ JSON_Value ;


 int JSONNull ;
 scalar_t__ parson_malloc (int) ;

JSON_Value * json_value_init_null(void) {
    JSON_Value *new_value = (JSON_Value*)parson_malloc(sizeof(JSON_Value));
    if (!new_value) {
        return ((void*)0);
    }
    new_value->parent = ((void*)0);
    new_value->type = JSONNull;
    return new_value;
}
