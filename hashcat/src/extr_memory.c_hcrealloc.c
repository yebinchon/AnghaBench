
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* MSG_ENOMEM ;
 int fprintf (int ,char*,char*) ;
 int memset (char*,int ,size_t const) ;
 void* realloc (void*,size_t const) ;
 int stderr ;

void *hcrealloc (void *ptr, const size_t oldsz, const size_t addsz)
{
  void *p = realloc (ptr, oldsz + addsz);

  if (p == ((void*)0))
  {
    fprintf (stderr, "%s\n", MSG_ENOMEM);

    return (((void*)0));
  }

  memset ((char *) p + oldsz, 0, addsz);

  return (p);
}
