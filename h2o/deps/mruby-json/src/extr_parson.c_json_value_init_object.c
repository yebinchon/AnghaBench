
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int object; } ;
struct TYPE_7__ {TYPE_1__ value; int type; int * parent; } ;
typedef TYPE_2__ JSON_Value ;


 int JSONObject ;
 int json_object_init (TYPE_2__*) ;
 int parson_free (TYPE_2__*) ;
 scalar_t__ parson_malloc (int) ;

JSON_Value * json_value_init_object(void) {
    JSON_Value *new_value = (JSON_Value*)parson_malloc(sizeof(JSON_Value));
    if (!new_value) {
        return ((void*)0);
    }
    new_value->parent = ((void*)0);
    new_value->type = JSONObject;
    new_value->value.object = json_object_init(new_value);
    if (!new_value->value.object) {
        parson_free(new_value);
        return ((void*)0);
    }
    return new_value;
}
