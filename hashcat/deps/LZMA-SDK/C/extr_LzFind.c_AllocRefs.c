
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ISzAllocPtr ;
typedef int CLzRef ;


 scalar_t__ ISzAlloc_Alloc (int ,size_t) ;

__attribute__((used)) static CLzRef* AllocRefs(size_t num, ISzAllocPtr alloc)
{
  size_t sizeInBytes = (size_t)num * sizeof(CLzRef);
  if (sizeInBytes / sizeof(CLzRef) != num)
    return ((void*)0);
  return (CLzRef *)ISzAlloc_Alloc(alloc, sizeInBytes);
}
