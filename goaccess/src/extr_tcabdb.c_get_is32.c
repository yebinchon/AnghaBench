
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* tcadbget (void*,int*,int,int*) ;

__attribute__((used)) static char *
get_is32 (void *hash, int key)
{
  int sp;
  char *value = ((void*)0);

  if (!hash)
    return ((void*)0);

  if ((value = tcadbget (hash, &key, sizeof (int), &sp)) != ((void*)0))
    return value;

  return ((void*)0);
}
