
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_object_t ;
struct TYPE_3__ {scalar_t__* str; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int GIT_OBJECT_INVALID ;
 int git__prefixncmp (char const*,size_t,scalar_t__*) ;
 TYPE_1__* git_objects_table ;

git_object_t git_object_stringn2type(const char *str, size_t len)
{
 size_t i;

 if (!str || !len || !*str)
  return GIT_OBJECT_INVALID;

 for (i = 0; i < ARRAY_SIZE(git_objects_table); i++)
  if (*git_objects_table[i].str &&
   !git__prefixncmp(str, len, git_objects_table[i].str))
   return (git_object_t)i;

 return GIT_OBJECT_INVALID;
}
