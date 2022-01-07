
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int free (void*) ;
 int strlen (char const*) ;
 void* tcadbget (void*,char const*,int ,int*) ;

__attribute__((used)) static uint32_t
get_sui32 (void *hash, const char *key)
{
  int ret = 0, sp;
  void *ptr;
  if (!hash)
    return 0;


  if ((ptr = tcadbget (hash, key, strlen (key), &sp)) != ((void*)0)) {
    ret = (*(uint32_t *) ptr);
    free (ptr);
    return ret;
  }

  return 0;
}
