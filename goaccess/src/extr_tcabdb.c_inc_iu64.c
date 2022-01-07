
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int LOG_DEBUG (char*) ;
 int free (void*) ;
 void* tcadbget (void*,int*,int,int*) ;
 int tcadbput (void*,int*,int,scalar_t__*,int) ;

__attribute__((used)) static int
inc_iu64 (void *hash, int key, uint64_t inc)
{
  int sp;
  uint64_t value = inc;
  void *ptr;

  if (!hash)
    return -1;

  if ((ptr = tcadbget (hash, &key, sizeof (int), &sp)) != ((void*)0)) {
    value = (*(uint64_t *) ptr) + inc;
    free (ptr);
  }


  if (!tcadbput (hash, &key, sizeof (int), &value, sizeof (uint64_t)))
    LOG_DEBUG (("Unable to tcadbput\n"));

  return 0;
}
