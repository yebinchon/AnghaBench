
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 void* tcadbget (void*,int*,int,int*) ;

__attribute__((used)) static int
get_ii32 (void *hash, int key)
{
  int sp, ret = 0;
  void *ptr = 0;

  if (!hash)
    return -1;


  if ((ptr = tcadbget (hash, &key, sizeof (int), &sp)) != ((void*)0)) {
    ret = (*(int *) ptr);
    free (ptr);
    return ret;
  }

  return 0;
}
