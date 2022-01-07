
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int free (void*) ;
 void* tcadbget (void*,void*,int,int*) ;
 int tcadbiterinit (void*) ;
 void* tcadbiternext (void*,int*) ;

__attribute__((used)) static void
get_iu64_min_max (void *hash, uint64_t * min, uint64_t * max)
{
  int i = 0, ksize = 0, sp = 0;
  uint64_t curvalue = 0;
  void *key, *ptr;

  tcadbiterinit (hash);
  while ((key = tcadbiternext (hash, &ksize)) != ((void*)0)) {
    if ((ptr = tcadbget (hash, key, ksize, &sp)) == ((void*)0)) {
      free (key);
      continue;
    }

    curvalue = (*(uint64_t *) ptr);
    if (i++ == 0)
      *min = curvalue;
    if (curvalue > *max)
      *max = curvalue;
    if (curvalue < *min)
      *min = curvalue;
    free (key);
    free (ptr);
  }
}
