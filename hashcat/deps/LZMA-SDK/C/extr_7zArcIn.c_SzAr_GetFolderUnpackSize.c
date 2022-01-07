
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UInt64 ;
typedef size_t UInt32 ;
struct TYPE_3__ {size_t* FoToCoderUnpackSizes; size_t* FoToMainUnpackSizeIndex; int * CoderUnpackSizes; } ;
typedef TYPE_1__ CSzAr ;



UInt64 SzAr_GetFolderUnpackSize(const CSzAr *p, UInt32 folderIndex)
{
  return p->CoderUnpackSizes[p->FoToCoderUnpackSizes[folderIndex] + p->FoToMainUnpackSizeIndex[folderIndex]];
}
