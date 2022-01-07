
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t git_object_t ;
struct TYPE_3__ {char const* str; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* git_objects_table ;

const char *git_object_type2string(git_object_t type)
{
 if (type < 0 || ((size_t) type) >= ARRAY_SIZE(git_objects_table))
  return "";

 return git_objects_table[type].str;
}
