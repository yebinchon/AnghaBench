
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * array; } ;
struct TYPE_6__ {TYPE_1__ value; } ;
typedef TYPE_2__ JSON_Value ;
typedef int JSON_Array ;


 scalar_t__ JSONArray ;
 scalar_t__ json_value_get_type (TYPE_2__ const*) ;

JSON_Array * json_value_get_array(const JSON_Value *value) {
    return json_value_get_type(value) == JSONArray ? value->value.array : ((void*)0);
}
