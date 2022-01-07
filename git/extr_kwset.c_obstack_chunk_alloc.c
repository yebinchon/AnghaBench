
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG (char*,long) ;
 void* xmalloc (long) ;

__attribute__((used)) static void *obstack_chunk_alloc(long size)
{
 if (size < 0)
  BUG("Cannot allocate a negative amount: %ld", size);
 return xmalloc(size);
}
