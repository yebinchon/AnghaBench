
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 void* tcadbget (void*,void*,int,int*) ;
 int tcadbiterinit (void*) ;
 void* tcadbiternext (void*,int*) ;

__attribute__((used)) static void
get_ii32_min_max (void *hash, int *min, int *max)
{
  int curvalue = 0, i = 0, ksize = 0, sp = 0;
  void *key, *ptr;

  tcadbiterinit (hash);
  while ((key = tcadbiternext (hash, &ksize)) != ((void*)0)) {
    if ((ptr = tcadbget (hash, key, ksize, &sp)) == ((void*)0)) {
      free (key);
      continue;
    }

    curvalue = (*(int *) ptr);
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
