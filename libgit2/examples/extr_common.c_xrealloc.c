
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 void* realloc (void*,size_t) ;
 int stderr ;

void *xrealloc(void *oldp, size_t newsz)
{
 void *p = realloc(oldp, newsz);
 if (p == ((void*)0)) {
  fprintf(stderr, "Cannot allocate memory, exiting.\n");
  exit(1);
 }
 return p;
}
