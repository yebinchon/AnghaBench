
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 int strlen (char const*) ;
 void* tcadbget (void*,char const*,int ,int*) ;

__attribute__((used)) static int
get_si32 (void *hash, const char *key)
{
  int ret = 0, sp;
  void *ptr;

  if (!hash)
    return -1;


  if ((ptr = tcadbget (hash, key, strlen (key), &sp)) != ((void*)0)) {
    ret = (*(int *) ptr);
    free (ptr);
    return ret;
  }

  return -1;
}
