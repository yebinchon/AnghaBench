
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* stdalloc__reallocarray (int *,size_t,size_t,char const*,int) ;

__attribute__((used)) static void *stdalloc__mallocarray(size_t nelem, size_t elsize, const char *file, int line)
{
 return stdalloc__reallocarray(((void*)0), nelem, elsize, file, line);
}
