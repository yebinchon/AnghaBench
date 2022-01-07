
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;
 int free_mem_end_ptr ;
 int free_mem_ptr ;
 int malloc_count ;
 int malloc_ptr ;

__attribute__((used)) static void *malloc(int size)
{
       void *p;

       if (size < 0)
  error("Malloc error");
       if (!malloc_ptr)
  malloc_ptr = free_mem_ptr;

       malloc_ptr = (malloc_ptr + 3) & ~3;

       p = (void *)malloc_ptr;
       malloc_ptr += size;

       if (free_mem_end_ptr && malloc_ptr >= free_mem_end_ptr)
  error("Out of memory");

       malloc_count++;
       return p;
}
