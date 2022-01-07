
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ids; int count; } ;
typedef TYPE_1__ git_oidarray ;
struct TYPE_6__ {int ptr; int size; } ;
typedef TYPE_2__ git_array_oid_t ;



void git_oidarray__from_array(git_oidarray *arr, git_array_oid_t *array)
{
 arr->count = array->size;
 arr->ids = array->ptr;
}
