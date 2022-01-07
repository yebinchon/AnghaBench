
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UInt64 ;
typedef size_t UInt32 ;
struct TYPE_5__ {scalar_t__* Vals; } ;
struct TYPE_4__ {size_t* FileToFolder; size_t* UnpackPositions; size_t* FolderToFile; TYPE_2__ CRCs; int dataPos; int db; } ;
typedef scalar_t__ SRes ;
typedef int ISzAllocPtr ;
typedef int ILookInStream ;
typedef TYPE_1__ CSzArEx ;
typedef int Byte ;


 scalar_t__ CrcCalc (int *,size_t) ;
 scalar_t__ ISzAlloc_Alloc (int ,size_t) ;
 int ISzAlloc_Free (int ,int *) ;
 scalar_t__ SZ_ERROR_CRC ;
 scalar_t__ SZ_ERROR_FAIL ;
 scalar_t__ SZ_ERROR_MEM ;
 scalar_t__ SZ_OK ;
 scalar_t__ SzAr_DecodeFolder (int *,size_t,int *,int ,int *,size_t,int ) ;
 size_t SzAr_GetFolderUnpackSize (int *,size_t) ;
 scalar_t__ SzBitWithVals_Check (TYPE_2__*,size_t) ;

SRes SzArEx_Extract(
    const CSzArEx *p,
    ILookInStream *inStream,
    UInt32 fileIndex,
    UInt32 *blockIndex,
    Byte **tempBuf,
    size_t *outBufferSize,
    size_t *offset,
    size_t *outSizeProcessed,
    ISzAllocPtr allocMain,
    ISzAllocPtr allocTemp)
{
  UInt32 folderIndex = p->FileToFolder[fileIndex];
  SRes res = SZ_OK;

  *offset = 0;
  *outSizeProcessed = 0;

  if (folderIndex == (UInt32)-1)
  {
    ISzAlloc_Free(allocMain, *tempBuf);
    *blockIndex = folderIndex;
    *tempBuf = ((void*)0);
    *outBufferSize = 0;
    return SZ_OK;
  }

  if (*tempBuf == ((void*)0) || *blockIndex != folderIndex)
  {
    UInt64 unpackSizeSpec = SzAr_GetFolderUnpackSize(&p->db, folderIndex);





    size_t unpackSize = (size_t)unpackSizeSpec;

    if (unpackSize != unpackSizeSpec)
      return SZ_ERROR_MEM;
    *blockIndex = folderIndex;
    ISzAlloc_Free(allocMain, *tempBuf);
    *tempBuf = ((void*)0);

    if (res == SZ_OK)
    {
      *outBufferSize = unpackSize;
      if (unpackSize != 0)
      {
        *tempBuf = (Byte *)ISzAlloc_Alloc(allocMain, unpackSize);
        if (*tempBuf == ((void*)0))
          res = SZ_ERROR_MEM;
      }

      if (res == SZ_OK)
      {
        res = SzAr_DecodeFolder(&p->db, folderIndex,
            inStream, p->dataPos, *tempBuf, unpackSize, allocTemp);
      }
    }
  }

  if (res == SZ_OK)
  {
    UInt64 unpackPos = p->UnpackPositions[fileIndex];
    *offset = (size_t)(unpackPos - p->UnpackPositions[p->FolderToFile[folderIndex]]);
    *outSizeProcessed = (size_t)(p->UnpackPositions[(size_t)fileIndex + 1] - unpackPos);
    if (*offset + *outSizeProcessed > *outBufferSize)
      return SZ_ERROR_FAIL;
    if (SzBitWithVals_Check(&p->CRCs, fileIndex))
      if (CrcCalc(*tempBuf + *offset, *outSizeProcessed) != p->CRCs.Vals[fileIndex])
        res = SZ_ERROR_CRC;
  }

  return res;
}
