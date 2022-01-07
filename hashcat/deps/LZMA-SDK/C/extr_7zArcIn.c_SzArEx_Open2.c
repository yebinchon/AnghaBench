
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t UInt64 ;
typedef scalar_t__ UInt32 ;
struct TYPE_15__ {scalar_t__* data; int size; } ;
struct TYPE_14__ {int startPosAfterHeader; } ;
struct TYPE_13__ {scalar_t__* Data; int Size; } ;
typedef scalar_t__ SRes ;
typedef int Int64 ;
typedef int ISzAllocPtr ;
typedef int ILookInStream ;
typedef TYPE_1__ CSzData ;
typedef TYPE_2__ CSzArEx ;
typedef int CSzAr ;
typedef TYPE_3__ CBuf ;
typedef scalar_t__ Byte ;


 int Buf_Create (TYPE_3__*,size_t,int ) ;
 int Buf_Free (TYPE_3__*,int ) ;
 int Buf_Init (TYPE_3__*) ;
 scalar_t__ CrcCalc (scalar_t__*,size_t) ;
 scalar_t__ GetUi32 (scalar_t__*) ;
 size_t GetUi64 (scalar_t__*) ;
 int ILookInStream_Seek (int *,int*,int ) ;
 scalar_t__ LookInStream_Read (int *,scalar_t__*,size_t) ;
 int LookInStream_Read2 (int *,scalar_t__*,int,scalar_t__) ;
 int LookInStream_SeekTo (int *,int) ;
 int RINOK (int ) ;
 scalar_t__ ReadID (TYPE_1__*,size_t*) ;
 scalar_t__ SZ_ERROR_ARCHIVE ;
 scalar_t__ SZ_ERROR_CRC ;
 scalar_t__ SZ_ERROR_INPUT_EOF ;
 scalar_t__ SZ_ERROR_MEM ;
 scalar_t__ SZ_ERROR_NO_ARCHIVE ;
 scalar_t__ SZ_ERROR_UNSUPPORTED ;
 scalar_t__ SZ_OK ;
 int SZ_SEEK_CUR ;
 int SZ_SEEK_END ;
 int SzAr_Free (int *,int ) ;
 int SzAr_Init (int *) ;
 scalar_t__ SzReadAndDecodePackedStreams (int *,TYPE_1__*,TYPE_3__*,int,int,int *,int ) ;
 scalar_t__ SzReadHeader (TYPE_2__*,TYPE_1__*,int *,int ,int ) ;
 int TestSignatureCandidate (scalar_t__*) ;
 size_t k7zIdEncodedHeader ;
 size_t k7zIdHeader ;
 scalar_t__ k7zMajorVersion ;
 int k7zStartHeaderSize ;

__attribute__((used)) static SRes SzArEx_Open2(
    CSzArEx *p,
    ILookInStream *inStream,
    ISzAllocPtr allocMain,
    ISzAllocPtr allocTemp)
{
  Byte header[k7zStartHeaderSize];
  Int64 startArcPos;
  UInt64 nextHeaderOffset, nextHeaderSize;
  size_t nextHeaderSizeT;
  UInt32 nextHeaderCRC;
  CBuf buf;
  SRes res;

  startArcPos = 0;
  RINOK(ILookInStream_Seek(inStream, &startArcPos, SZ_SEEK_CUR));

  RINOK(LookInStream_Read2(inStream, header, k7zStartHeaderSize, SZ_ERROR_NO_ARCHIVE));

  if (!TestSignatureCandidate(header))
    return SZ_ERROR_NO_ARCHIVE;
  if (header[6] != k7zMajorVersion)
    return SZ_ERROR_UNSUPPORTED;

  nextHeaderOffset = GetUi64(header + 12);
  nextHeaderSize = GetUi64(header + 20);
  nextHeaderCRC = GetUi32(header + 28);

  p->startPosAfterHeader = startArcPos + k7zStartHeaderSize;

  if (CrcCalc(header + 12, 20) != GetUi32(header + 8))
    return SZ_ERROR_CRC;

  nextHeaderSizeT = (size_t)nextHeaderSize;
  if (nextHeaderSizeT != nextHeaderSize)
    return SZ_ERROR_MEM;
  if (nextHeaderSizeT == 0)
    return SZ_OK;
  if (nextHeaderOffset > nextHeaderOffset + nextHeaderSize ||
      nextHeaderOffset > nextHeaderOffset + nextHeaderSize + k7zStartHeaderSize)
    return SZ_ERROR_NO_ARCHIVE;

  {
    Int64 pos = 0;
    RINOK(ILookInStream_Seek(inStream, &pos, SZ_SEEK_END));
    if ((UInt64)pos < startArcPos + nextHeaderOffset ||
        (UInt64)pos < startArcPos + k7zStartHeaderSize + nextHeaderOffset ||
        (UInt64)pos < startArcPos + k7zStartHeaderSize + nextHeaderOffset + nextHeaderSize)
      return SZ_ERROR_INPUT_EOF;
  }

  RINOK(LookInStream_SeekTo(inStream, startArcPos + k7zStartHeaderSize + nextHeaderOffset));

  if (!Buf_Create(&buf, nextHeaderSizeT, allocTemp))
    return SZ_ERROR_MEM;

  res = LookInStream_Read(inStream, buf.data, nextHeaderSizeT);

  if (res == SZ_OK)
  {
    res = SZ_ERROR_ARCHIVE;
    if (CrcCalc(buf.data, nextHeaderSizeT) == nextHeaderCRC)
    {
      CSzData sd;
      UInt64 type;
      sd.Data = buf.data;
      sd.Size = buf.size;

      res = ReadID(&sd, &type);

      if (res == SZ_OK && type == k7zIdEncodedHeader)
      {
        CSzAr tempAr;
        CBuf tempBuf;
        Buf_Init(&tempBuf);

        SzAr_Init(&tempAr);
        res = SzReadAndDecodePackedStreams(inStream, &sd, &tempBuf, 1, p->startPosAfterHeader, &tempAr, allocTemp);
        SzAr_Free(&tempAr, allocTemp);

        if (res != SZ_OK)
        {
          Buf_Free(&tempBuf, allocTemp);
        }
        else
        {
          Buf_Free(&buf, allocTemp);
          buf.data = tempBuf.data;
          buf.size = tempBuf.size;
          sd.Data = buf.data;
          sd.Size = buf.size;
          res = ReadID(&sd, &type);
        }
      }

      if (res == SZ_OK)
      {
        if (type == k7zIdHeader)
        {
          res = SzReadHeader(p, &sd, inStream, allocMain, allocTemp);
        }
        else
          res = SZ_ERROR_UNSUPPORTED;
      }
    }
  }

  Buf_Free(&buf, allocTemp);
  return res;
}
