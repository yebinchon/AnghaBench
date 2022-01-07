
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int db; int CTime; int MTime; int Attribs; int CRCs; int FileNames; int FileNameOffsets; int FileToFolder; int FolderToFile; int IsDirs; int UnpackPositions; } ;
typedef int ISzAllocPtr ;
typedef TYPE_1__ CSzArEx ;


 int ISzAlloc_Free (int ,int ) ;
 int SzArEx_Init (TYPE_1__*) ;
 int SzAr_Free (int *,int ) ;
 int SzBitUi32s_Free (int *,int ) ;
 int SzBitUi64s_Free (int *,int ) ;

void SzArEx_Free(CSzArEx *p, ISzAllocPtr alloc)
{
  ISzAlloc_Free(alloc, p->UnpackPositions);
  ISzAlloc_Free(alloc, p->IsDirs);

  ISzAlloc_Free(alloc, p->FolderToFile);
  ISzAlloc_Free(alloc, p->FileToFolder);

  ISzAlloc_Free(alloc, p->FileNameOffsets);
  ISzAlloc_Free(alloc, p->FileNames);

  SzBitUi32s_Free(&p->CRCs, alloc);
  SzBitUi32s_Free(&p->Attribs, alloc);

  SzBitUi64s_Free(&p->MTime, alloc);
  SzBitUi64s_Free(&p->CTime, alloc);

  SzAr_Free(&p->db, alloc);
  SzArEx_Init(p);
}
