
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 char* planetcore_get_key (char const*,char const*) ;
 int strtoull (char const*,int *,int) ;

int planetcore_get_hex(const char *table, const char *key, u64 *val)
{
 const char *str = planetcore_get_key(table, key);
 if (!str)
  return 0;

 *val = strtoull(str, ((void*)0), 16);
 return 1;
}
