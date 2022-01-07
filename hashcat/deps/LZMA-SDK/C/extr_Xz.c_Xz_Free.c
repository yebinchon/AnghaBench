
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * blocks; scalar_t__ numBlocks; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CXzStream ;


 int ISzAlloc_Free (int ,int *) ;

void Xz_Free(CXzStream *p, ISzAllocPtr alloc)
{
  ISzAlloc_Free(alloc, p->blocks);
  p->numBlocks = 0;
  p->blocks = ((void*)0);
}
