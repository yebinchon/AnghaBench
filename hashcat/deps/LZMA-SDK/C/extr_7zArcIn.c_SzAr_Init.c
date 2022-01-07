
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * CodersData; int * CoderUnpackSizes; int * FoToMainUnpackSizeIndex; int * FoToCoderUnpackSizes; int * FoStartPackStreamIndex; int * FoCodersOffsets; int FolderCRCs; int * PackPositions; scalar_t__ NumFolders; scalar_t__ NumPackStreams; } ;
typedef TYPE_1__ CSzAr ;


 int SzBitUi32s_Init (int *) ;

__attribute__((used)) static void SzAr_Init(CSzAr *p)
{
  p->NumPackStreams = 0;
  p->NumFolders = 0;

  p->PackPositions = ((void*)0);
  SzBitUi32s_Init(&p->FolderCRCs);

  p->FoCodersOffsets = ((void*)0);
  p->FoStartPackStreamIndex = ((void*)0);
  p->FoToCoderUnpackSizes = ((void*)0);
  p->FoToMainUnpackSizeIndex = ((void*)0);
  p->CoderUnpackSizes = ((void*)0);

  p->CodersData = ((void*)0);
}
