
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** names; char** values; int count; size_t capacity; } ;
typedef char JSON_Value ;
typedef int JSON_Status ;
typedef TYPE_1__ JSON_Object ;


 int JSONFailure ;
 int JSONSuccess ;
 int memcpy (char**,char**,int) ;
 int parson_free (char**) ;
 scalar_t__ parson_malloc (size_t) ;

__attribute__((used)) static JSON_Status json_object_resize(JSON_Object *object, size_t new_capacity) {
    char **temp_names = ((void*)0);
    JSON_Value **temp_values = ((void*)0);

    if ((object->names == ((void*)0) && object->values != ((void*)0)) ||
        (object->names != ((void*)0) && object->values == ((void*)0)) ||
        new_capacity == 0) {
            return JSONFailure;
    }
    temp_names = (char**)parson_malloc(new_capacity * sizeof(char*));
    if (temp_names == ((void*)0)) {
        return JSONFailure;
    }
    temp_values = (JSON_Value**)parson_malloc(new_capacity * sizeof(JSON_Value*));
    if (temp_values == ((void*)0)) {
        parson_free(temp_names);
        return JSONFailure;
    }
    if (object->names != ((void*)0) && object->values != ((void*)0) && object->count > 0) {
        memcpy(temp_names, object->names, object->count * sizeof(char*));
        memcpy(temp_values, object->values, object->count * sizeof(JSON_Value*));
    }
    parson_free(object->names);
    parson_free(object->values);
    object->names = temp_names;
    object->values = temp_values;
    object->capacity = new_capacity;
    return JSONSuccess;
}
