
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; scalar_t__ data; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CBuf ;


 int ISzAlloc_Free (int ,scalar_t__) ;

void Buf_Free(CBuf *p, ISzAllocPtr alloc)
{
  ISzAlloc_Free(alloc, p->data);
  p->data = 0;
  p->size = 0;
}
