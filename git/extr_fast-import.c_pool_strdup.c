
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fi_mem_pool ;
 char* mem_pool_alloc (int *,size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static char *pool_strdup(const char *s)
{
 size_t len = strlen(s) + 1;
 char *r = mem_pool_alloc(&fi_mem_pool, len);
 memcpy(r, s, len);
 return r;
}
