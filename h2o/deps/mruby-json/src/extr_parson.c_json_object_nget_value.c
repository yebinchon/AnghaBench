
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ** values; int * names; } ;
typedef int JSON_Value ;
typedef TYPE_1__ JSON_Object ;


 size_t json_object_get_count (TYPE_1__ const*) ;
 size_t strlen (int ) ;
 scalar_t__ strncmp (int ,char const*,size_t) ;

__attribute__((used)) static JSON_Value * json_object_nget_value(const JSON_Object *object, const char *name, size_t n) {
    size_t i, name_length;
    for (i = 0; i < json_object_get_count(object); i++) {
        name_length = strlen(object->names[i]);
        if (name_length != n) {
            continue;
        }
        if (strncmp(object->names[i], name, n) == 0) {
            return object->values[i];
        }
    }
    return ((void*)0);
}
