
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ISzAllocPtr ;


 int ISzAlloc_Free (int ,void*) ;

__attribute__((used)) static void BraState_Free(void *pp, ISzAllocPtr alloc)
{
  ISzAlloc_Free(alloc, pp);
}
