
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* MSG_ENOMEM ;
 void* calloc (size_t const,size_t const) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

void *hccalloc (const size_t nmemb, const size_t sz)
{
  void *p = calloc (nmemb, sz);

  if (p == ((void*)0))
  {
    fprintf (stderr, "%s\n", MSG_ENOMEM);

    return (((void*)0));
  }

  return (p);
}
