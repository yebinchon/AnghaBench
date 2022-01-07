
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* tcadbget2 (void*,char const*) ;

__attribute__((used)) static char *
get_ss32 (void *hash, const char *key)
{
  char *value = ((void*)0);

  if (!hash)
    return ((void*)0);

  if ((value = tcadbget2 (hash, key)) != ((void*)0))
    return value;

  return ((void*)0);
}
