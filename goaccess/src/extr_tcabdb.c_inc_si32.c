
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG (char*) ;
 int free (void*) ;
 int strlen (char const*) ;
 void* tcadbget (void*,char const*,int ,int*) ;
 int tcadbput (void*,char const*,int ,int*,int) ;

__attribute__((used)) static int
inc_si32 (void *hash, const char *key, int inc)
{
  int value = inc, sp;
  void *ptr;

  if (!hash)
    return -1;

  if ((ptr = tcadbget (hash, key, strlen (key), &sp)) != ((void*)0)) {
    value = (*(int *) ptr) + inc;
    free (ptr);
  }


  if (!tcadbput (hash, key, strlen (key), &value, sizeof (int)))
    LOG_DEBUG (("Unable to tcadbput\n"));

  return 0;
}
