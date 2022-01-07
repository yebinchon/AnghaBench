
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ allocated; scalar_t__ size; scalar_t__ numBlocks; int * blocks; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CXzEncIndex ;


 int ISzAlloc_Free (int ,int *) ;

__attribute__((used)) static void XzEncIndex_Free(CXzEncIndex *p, ISzAllocPtr alloc)
{
  if (p->blocks)
  {
    ISzAlloc_Free(alloc, p->blocks);
    p->blocks = ((void*)0);
  }
  p->numBlocks = 0;
  p->size = 0;
  p->allocated = 0;
}
