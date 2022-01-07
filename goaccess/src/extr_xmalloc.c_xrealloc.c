
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL (char*) ;
 void* realloc (void*,size_t) ;

void *
xrealloc (void *oldptr, size_t size)
{
  void *newptr;

  if ((newptr = realloc (oldptr, size)) == ((void*)0))
    FATAL ("Unable to reallocate memory - failed");

  return (newptr);
}
