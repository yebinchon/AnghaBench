
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ISzAllocPtr ;


 size_t ADJUST_ALLOC_SIZE ;
 int ALLOC_ALIGN_SIZE ;
 void* MY_ALIGN_PTR_UP_PLUS (void*,int) ;
 void* MyAlloc (size_t) ;
 int Print (char*) ;
 int PrintAddr (void*) ;
 int PrintHex (size_t,int) ;
 int PrintLn () ;
 int UNUSED_VAR (int ) ;
 scalar_t__ posix_memalign (void**,int,size_t) ;

__attribute__((used)) static void *SzAlignedAlloc(ISzAllocPtr pp, size_t size)
{


  void *p;
  void *pAligned;
  size_t newSize;
  UNUSED_VAR(pp);




  newSize = size + ALLOC_ALIGN_SIZE * 1 + ADJUST_ALLOC_SIZE;
  if (newSize < size)
    return ((void*)0);

  p = MyAlloc(newSize);

  if (!p)
    return ((void*)0);
  pAligned = MY_ALIGN_PTR_UP_PLUS(p, ALLOC_ALIGN_SIZE);

  Print(" size="); PrintHex(size, 8);
  Print(" a_size="); PrintHex(newSize, 8);
  Print(" ptr="); PrintAddr(p);
  Print(" a_ptr="); PrintAddr(pAligned);
  PrintLn();

  ((void **)pAligned)[-1] = p;

  return pAligned;
}
