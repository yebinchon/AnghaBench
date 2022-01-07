
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 void* malloc (size_t) ;
 int pr_err (char*,unsigned long) ;

void *xmalloc(size_t size) {
  void *ptr;

  ptr = malloc(size);
  if (ptr == ((void*)0)) {
    pr_err("out of memory, need %lu bytes", (unsigned long) size);
    exit(1);
  }

  return ptr;
}
