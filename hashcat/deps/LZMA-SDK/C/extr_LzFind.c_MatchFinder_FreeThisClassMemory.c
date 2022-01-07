
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hash; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CMatchFinder ;


 int ISzAlloc_Free (int ,int *) ;

__attribute__((used)) static void MatchFinder_FreeThisClassMemory(CMatchFinder *p, ISzAllocPtr alloc)
{
  ISzAlloc_Free(alloc, p->hash);
  p->hash = ((void*)0);
}
