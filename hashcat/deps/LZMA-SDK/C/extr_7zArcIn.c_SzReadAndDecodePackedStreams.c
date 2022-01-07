
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t UInt64 ;
typedef scalar_t__ UInt32 ;
struct TYPE_11__ {int size; int data; } ;
struct TYPE_10__ {scalar_t__ NumFolders; } ;
typedef int SRes ;
typedef int ISzAllocPtr ;
typedef int ILookInStream ;
typedef int CSzData ;
typedef TYPE_1__ CSzAr ;
typedef int CSubStreamInfo ;
typedef TYPE_2__ CBuf ;


 int Buf_Create (TYPE_2__*,size_t,int ) ;
 int Buf_Init (TYPE_2__*) ;
 int LookInStream_SeekTo (int *,size_t) ;
 int RINOK (int ) ;
 int SZ_ERROR_ARCHIVE ;
 int SZ_ERROR_MEM ;
 int SZ_OK ;
 int SzAr_DecodeFolder (TYPE_1__*,scalar_t__,int *,size_t,int ,int ,int ) ;
 size_t SzAr_GetFolderUnpackSize (TYPE_1__*,scalar_t__) ;
 int SzReadStreamsInfo (TYPE_1__*,int *,scalar_t__,int *,int ,size_t*,int *,int ) ;

__attribute__((used)) static SRes SzReadAndDecodePackedStreams(
    ILookInStream *inStream,
    CSzData *sd,
    CBuf *tempBufs,
    UInt32 numFoldersMax,
    UInt64 baseOffset,
    CSzAr *p,
    ISzAllocPtr allocTemp)
{
  UInt64 dataStartPos;
  UInt32 fo;
  CSubStreamInfo ssi;

  RINOK(SzReadStreamsInfo(p, sd, numFoldersMax, ((void*)0), 0, &dataStartPos, &ssi, allocTemp));

  dataStartPos += baseOffset;
  if (p->NumFolders == 0)
    return SZ_ERROR_ARCHIVE;

  for (fo = 0; fo < p->NumFolders; fo++)
    Buf_Init(tempBufs + fo);

  for (fo = 0; fo < p->NumFolders; fo++)
  {
    CBuf *tempBuf = tempBufs + fo;
    UInt64 unpackSize = SzAr_GetFolderUnpackSize(p, fo);
    if ((size_t)unpackSize != unpackSize)
      return SZ_ERROR_MEM;
    if (!Buf_Create(tempBuf, (size_t)unpackSize, allocTemp))
      return SZ_ERROR_MEM;
  }

  for (fo = 0; fo < p->NumFolders; fo++)
  {
    const CBuf *tempBuf = tempBufs + fo;
    RINOK(LookInStream_SeekTo(inStream, dataStartPos));
    RINOK(SzAr_DecodeFolder(p, fo, inStream, dataStartPos, tempBuf->data, tempBuf->size, allocTemp));
  }

  return SZ_OK;
}
