
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const** names; } ;
typedef TYPE_1__ JSON_Object ;


 size_t json_object_get_count (TYPE_1__ const*) ;

const char * json_object_get_name(const JSON_Object *object, size_t index) {
    if (object == ((void*)0) || index >= json_object_get_count(object)) {
        return ((void*)0);
    }
    return object->names[index];
}
