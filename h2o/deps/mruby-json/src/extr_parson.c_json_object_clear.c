
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ count; int * values; int * names; } ;
typedef int JSON_Status ;
typedef TYPE_1__ JSON_Object ;


 int JSONFailure ;
 int JSONSuccess ;
 size_t json_object_get_count (TYPE_1__*) ;
 int json_value_free (int ) ;
 int parson_free (int ) ;

JSON_Status json_object_clear(JSON_Object *object) {
    size_t i = 0;
    if (object == ((void*)0)) {
        return JSONFailure;
    }
    for (i = 0; i < json_object_get_count(object); i++) {
        parson_free(object->names[i]);
        json_value_free(object->values[i]);
    }
    object->count = 0;
    return JSONSuccess;
}
