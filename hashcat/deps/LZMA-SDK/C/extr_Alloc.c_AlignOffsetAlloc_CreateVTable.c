
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Free; int Alloc; } ;
struct TYPE_5__ {TYPE_1__ vt; } ;
typedef TYPE_2__ CAlignOffsetAlloc ;


 int AlignOffsetAlloc_Alloc ;
 int AlignOffsetAlloc_Free ;

void AlignOffsetAlloc_CreateVTable(CAlignOffsetAlloc *p)
{
  p->vt.Alloc = AlignOffsetAlloc_Alloc;
  p->vt.Free = AlignOffsetAlloc_Free;
}
