
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t git_object_t ;
struct TYPE_3__ {size_t size; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* git_objects_table ;

size_t git_object__size(git_object_t type)
{
 if (type < 0 || ((size_t) type) >= ARRAY_SIZE(git_objects_table))
  return 0;

 return git_objects_table[type].size;
}
