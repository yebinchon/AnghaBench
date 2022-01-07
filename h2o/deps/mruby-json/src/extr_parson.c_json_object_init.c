
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** names; scalar_t__ count; scalar_t__ capacity; int ** values; int * wrapping_value; } ;
typedef int JSON_Value ;
typedef TYPE_1__ JSON_Object ;


 scalar_t__ parson_malloc (int) ;

__attribute__((used)) static JSON_Object * json_object_init(JSON_Value *wrapping_value) {
    JSON_Object *new_obj = (JSON_Object*)parson_malloc(sizeof(JSON_Object));
    if (new_obj == ((void*)0)) {
        return ((void*)0);
    }
    new_obj->wrapping_value = wrapping_value;
    new_obj->names = (char**)((void*)0);
    new_obj->values = (JSON_Value**)((void*)0);
    new_obj->capacity = 0;
    new_obj->count = 0;
    return new_obj;
}
