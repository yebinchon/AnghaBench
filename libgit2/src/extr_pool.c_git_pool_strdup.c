
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int item_size; } ;
typedef TYPE_1__ git_pool ;


 int assert (int) ;
 char* git_pool_strndup (TYPE_1__*,char const*,int ) ;
 int strlen (char const*) ;

char *git_pool_strdup(git_pool *pool, const char *str)
{
 assert(pool && str && pool->item_size == sizeof(char));
 return git_pool_strndup(pool, str, strlen(str));
}
