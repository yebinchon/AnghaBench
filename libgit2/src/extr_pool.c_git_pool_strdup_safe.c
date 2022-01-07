
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_pool ;


 char* git_pool_strdup (int *,char const*) ;

char *git_pool_strdup_safe(git_pool *pool, const char *str)
{
 return str ? git_pool_strdup(pool, str) : ((void*)0);
}
