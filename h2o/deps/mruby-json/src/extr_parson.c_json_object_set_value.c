
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__** values; int * names; } ;
struct TYPE_12__ {int * parent; } ;
typedef TYPE_1__ JSON_Value ;
typedef int JSON_Status ;
typedef TYPE_2__ JSON_Object ;


 int JSONFailure ;
 int JSONSuccess ;
 int json_object_add (TYPE_2__*,char const*,TYPE_1__*) ;
 size_t json_object_get_count (TYPE_2__*) ;
 TYPE_1__* json_object_get_value (TYPE_2__*,char const*) ;
 int * json_object_get_wrapping_value (TYPE_2__*) ;
 int json_value_free (TYPE_1__*) ;
 scalar_t__ strcmp (int ,char const*) ;

JSON_Status json_object_set_value(JSON_Object *object, const char *name, JSON_Value *value) {
    size_t i = 0;
    JSON_Value *old_value;
    if (object == ((void*)0) || name == ((void*)0) || value == ((void*)0) || value->parent != ((void*)0)) {
        return JSONFailure;
    }
    old_value = json_object_get_value(object, name);
    if (old_value != ((void*)0)) {
        json_value_free(old_value);
        for (i = 0; i < json_object_get_count(object); i++) {
            if (strcmp(object->names[i], name) == 0) {
                value->parent = json_object_get_wrapping_value(object);
                object->values[i] = value;
                return JSONSuccess;
            }
        }
    }

    return json_object_add(object, name, value);
}
