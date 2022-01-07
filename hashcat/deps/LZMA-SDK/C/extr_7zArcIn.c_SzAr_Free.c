
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int CodersData; int CoderUnpackSizes; int FoToMainUnpackSizeIndex; int FoToCoderUnpackSizes; int FoStartPackStreamIndex; int FoCodersOffsets; int FolderCRCs; int PackPositions; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CSzAr ;


 int ISzAlloc_Free (int ,int ) ;
 int SzAr_Init (TYPE_1__*) ;
 int SzBitUi32s_Free (int *,int ) ;

__attribute__((used)) static void SzAr_Free(CSzAr *p, ISzAllocPtr alloc)
{
  ISzAlloc_Free(alloc, p->PackPositions);
  SzBitUi32s_Free(&p->FolderCRCs, alloc);

  ISzAlloc_Free(alloc, p->FoCodersOffsets);
  ISzAlloc_Free(alloc, p->FoStartPackStreamIndex);
  ISzAlloc_Free(alloc, p->FoToCoderUnpackSizes);
  ISzAlloc_Free(alloc, p->FoToMainUnpackSizeIndex);
  ISzAlloc_Free(alloc, p->CoderUnpackSizes);

  ISzAlloc_Free(alloc, p->CodersData);

  SzAr_Init(p);
}
