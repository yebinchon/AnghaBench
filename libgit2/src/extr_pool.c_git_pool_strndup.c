
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int item_size; } ;
typedef TYPE_1__ git_pool ;


 size_t SIZE_MAX ;
 int assert (int) ;
 char* git_pool_malloc (TYPE_1__*,size_t) ;
 int memcpy (char*,char const*,size_t) ;

char *git_pool_strndup(git_pool *pool, const char *str, size_t n)
{
 char *ptr = ((void*)0);

 assert(pool && str && pool->item_size == sizeof(char));

 if (n == SIZE_MAX)
  return ((void*)0);

 if ((ptr = git_pool_malloc(pool, (n + 1))) != ((void*)0)) {
  memcpy(ptr, str, n);
  ptr[n] = '\0';
 }

 return ptr;
}
