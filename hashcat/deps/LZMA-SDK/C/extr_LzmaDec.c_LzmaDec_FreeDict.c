
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dic; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CLzmaDec ;


 int ISzAlloc_Free (int ,int *) ;

__attribute__((used)) static void LzmaDec_FreeDict(CLzmaDec *p, ISzAllocPtr alloc)
{
  ISzAlloc_Free(alloc, p->dic);
  p->dic = ((void*)0);
}
