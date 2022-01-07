
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int count; int * values; int * names; } ;
typedef int JSON_Status ;
typedef TYPE_1__ JSON_Object ;


 int JSONFailure ;
 int JSONSuccess ;
 size_t json_object_get_count (TYPE_1__*) ;
 int * json_object_get_value (TYPE_1__*,char const*) ;
 int json_value_free (int ) ;
 int parson_free (int ) ;
 scalar_t__ strcmp (int ,char const*) ;

JSON_Status json_object_remove(JSON_Object *object, const char *name) {
    size_t i = 0, last_item_index = 0;
    if (object == ((void*)0) || json_object_get_value(object, name) == ((void*)0)) {
        return JSONFailure;
    }
    last_item_index = json_object_get_count(object) - 1;
    for (i = 0; i < json_object_get_count(object); i++) {
        if (strcmp(object->names[i], name) == 0) {
            parson_free(object->names[i]);
            json_value_free(object->values[i]);
            if (i != last_item_index) {
                object->names[i] = object->names[last_item_index];
                object->values[i] = object->values[last_item_index];
            }
            object->count -= 1;
            return JSONSuccess;
        }
    }
    return JSONFailure;
}
