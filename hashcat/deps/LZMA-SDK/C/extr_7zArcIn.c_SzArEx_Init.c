
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CTime; int MTime; int Attribs; int CRCs; int * FileNames; int * FileNameOffsets; int * FileToFolder; int * FolderToFile; int * IsDirs; int * UnpackPositions; scalar_t__ dataPos; scalar_t__ NumFiles; int db; } ;
typedef TYPE_1__ CSzArEx ;


 int SzAr_Init (int *) ;
 int SzBitUi32s_Init (int *) ;
 int SzBitUi64s_Init (int *) ;

void SzArEx_Init(CSzArEx *p)
{
  SzAr_Init(&p->db);

  p->NumFiles = 0;
  p->dataPos = 0;

  p->UnpackPositions = ((void*)0);
  p->IsDirs = ((void*)0);

  p->FolderToFile = ((void*)0);
  p->FileToFolder = ((void*)0);

  p->FileNameOffsets = ((void*)0);
  p->FileNames = ((void*)0);

  SzBitUi32s_Init(&p->CRCs);
  SzBitUi32s_Init(&p->Attribs);

  SzBitUi64s_Init(&p->MTime);
  SzBitUi64s_Init(&p->CTime);
}
