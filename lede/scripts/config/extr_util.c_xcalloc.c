
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (size_t,size_t) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void *xcalloc(size_t nmemb, size_t size)
{
 void *p = calloc(nmemb, size);
 if (p)
  return p;
 fprintf(stderr, "Out of memory.\n");
 exit(1);
}
