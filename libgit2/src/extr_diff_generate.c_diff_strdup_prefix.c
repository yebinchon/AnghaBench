
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_pool ;


 char* git_pool_strcat (int *,char const*,char*) ;
 char* git_pool_strndup (int *,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *diff_strdup_prefix(git_pool *pool, const char *prefix)
{
 size_t len = strlen(prefix);


 if (len > 0 && prefix[len - 1] != '/')
  return git_pool_strcat(pool, prefix, "/");
 else
  return git_pool_strndup(pool, prefix, len + 1);
}
