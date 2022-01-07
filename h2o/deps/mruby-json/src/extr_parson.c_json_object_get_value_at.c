
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ** values; } ;
typedef int JSON_Value ;
typedef TYPE_1__ JSON_Object ;


 size_t json_object_get_count (TYPE_1__ const*) ;

JSON_Value * json_object_get_value_at(const JSON_Object *object, size_t index) {
    if (object == ((void*)0) || index >= json_object_get_count(object)) {
        return ((void*)0);
    }
    return object->values[index];
}
