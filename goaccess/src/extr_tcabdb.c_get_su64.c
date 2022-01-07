
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int free (void*) ;
 int strlen (char const*) ;
 void* tcadbget (void*,char const*,int ,int*) ;

__attribute__((used)) static uint64_t
get_su64 (void *hash, const char *key)
{
  int sp;
  uint64_t ret = 0;
  void *ptr;
  if (!hash)
    return 0;


  if ((ptr = tcadbget (hash, key, strlen (key), &sp)) != ((void*)0)) {
    ret = (*(uint64_t *) ptr);
    free (ptr);
    return ret;
  }

  return 0;
}
