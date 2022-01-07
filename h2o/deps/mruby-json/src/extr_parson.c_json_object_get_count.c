
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t count; } ;
typedef TYPE_1__ JSON_Object ;



size_t json_object_get_count(const JSON_Object *object) {
    return object ? object->count : 0;
}
