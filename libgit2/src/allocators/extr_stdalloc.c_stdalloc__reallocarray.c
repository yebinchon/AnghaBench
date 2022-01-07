
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GIT_MULTIPLY_SIZET_OVERFLOW (size_t*,size_t,size_t) ;
 void* stdalloc__realloc (void*,size_t,char const*,int) ;

__attribute__((used)) static void *stdalloc__reallocarray(void *ptr, size_t nelem, size_t elsize, const char *file, int line)
{
 size_t newsize;

 if (GIT_MULTIPLY_SIZET_OVERFLOW(&newsize, nelem, elsize))
  return ((void*)0);

 return stdalloc__realloc(ptr, newsize, file, line);
}
