
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t count; } ;
typedef TYPE_1__ JSON_Array ;



size_t json_array_get_count(const JSON_Array *array) {
    return array ? array->count : 0;
}
