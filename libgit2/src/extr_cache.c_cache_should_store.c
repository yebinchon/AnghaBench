
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t git_object_t ;


 scalar_t__ git_cache__enabled ;
 size_t* git_cache__max_object_size ;

__attribute__((used)) static bool cache_should_store(git_object_t object_type, size_t object_size)
{
 size_t max_size = git_cache__max_object_size[object_type];
 return git_cache__enabled && object_size < max_size;
}
