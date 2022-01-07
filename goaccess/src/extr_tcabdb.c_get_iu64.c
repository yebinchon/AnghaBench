
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int free (void*) ;
 void* tcadbget (void*,int*,int,int*) ;

__attribute__((used)) static uint64_t
get_iu64 (void *hash, int key)
{
  int sp;
  uint64_t ret = 0;
  void *ptr = 0;

  if (!hash)
    return 0;


  if ((ptr = tcadbget (hash, &key, sizeof (int), &sp)) != ((void*)0)) {
    ret = (*(uint64_t *) ptr);
    free (ptr);
    return ret;
  }

  return 0;
}
