
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * probs; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CLzmaDec ;


 int ISzAlloc_Free (int ,int *) ;

void LzmaDec_FreeProbs(CLzmaDec *p, ISzAllocPtr alloc)
{
  ISzAlloc_Free(alloc, p->probs);
  p->probs = ((void*)0);
}
