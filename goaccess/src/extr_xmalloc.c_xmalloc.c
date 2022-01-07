
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL (char*) ;
 void* malloc (size_t) ;

void *
xmalloc (size_t size)
{
  void *ptr;

  if ((ptr = malloc (size)) == ((void*)0))
    FATAL ("Unable to allocate memory - failed.");

  return (ptr);
}
