
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t git_object_t ;


 size_t ARRAY_SIZE (size_t*) ;
 int GIT_ERROR_INVALID ;
 size_t* git_cache__max_object_size ;
 int git_error_set (int ,char*) ;

int git_cache_set_max_object_size(git_object_t type, size_t size)
{
 if (type < 0 || (size_t)type >= ARRAY_SIZE(git_cache__max_object_size)) {
  git_error_set(GIT_ERROR_INVALID, "type out of range");
  return -1;
 }

 git_cache__max_object_size[type] = size;
 return 0;
}
