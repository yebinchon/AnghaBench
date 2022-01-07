
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * bufferBase; int directInput; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CMatchFinder ;


 int ISzAlloc_Free (int ,int *) ;

__attribute__((used)) static void LzInWindow_Free(CMatchFinder *p, ISzAllocPtr alloc)
{
  if (!p->directInput)
  {
    ISzAlloc_Free(alloc, p->bufferBase);
    p->bufferBase = ((void*)0);
  }
}
