
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*,unsigned long) ;
 int error (char*,unsigned long) ;
 void* malloc (int) ;
 scalar_t__ memory_limit_check (size_t,int) ;
 int memset (void*,int,size_t) ;

__attribute__((used)) static void *do_xmalloc(size_t size, int gentle)
{
 void *ret;

 if (memory_limit_check(size, gentle))
  return ((void*)0);
 ret = malloc(size);
 if (!ret && !size)
  ret = malloc(1);
 if (!ret) {
  if (!gentle)
   die("Out of memory, malloc failed (tried to allocate %lu bytes)",
       (unsigned long)size);
  else {
   error("Out of memory, malloc failed (tried to allocate %lu bytes)",
         (unsigned long)size);
   return ((void*)0);
  }
 }



 return ret;
}
