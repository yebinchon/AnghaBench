
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ISzAllocPtr ;


 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,size_t) ;
 int UNUSED_VAR (int ) ;
 int fprintf (int ,char*,unsigned int,int) ;
 int g_allocCountTemp ;
 void* malloc (size_t) ;
 int stderr ;

void *SzAllocTemp(ISzAllocPtr p, size_t size)
{
  UNUSED_VAR(p);
  if (size == 0)
    return 0;







  return malloc(size);
}
