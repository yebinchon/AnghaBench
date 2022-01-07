
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;
 int memory_limit_check (size_t,int ) ;
 void* realloc (void*,int) ;

void *xrealloc(void *ptr, size_t size)
{
 void *ret;

 memory_limit_check(size, 0);
 ret = realloc(ptr, size);
 if (!ret && !size)
  ret = realloc(ptr, 1);
 if (!ret)
  die("Out of memory, realloc failed");
 return ret;
}
