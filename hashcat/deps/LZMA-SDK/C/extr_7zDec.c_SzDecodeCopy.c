
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UInt64 ;
typedef int SRes ;
typedef int ILookInStream ;
typedef int Byte ;


 int ILookInStream_Look (int *,void const**,size_t*) ;
 int ILookInStream_Skip (int *,size_t) ;
 int RINOK (int ) ;
 int SZ_ERROR_INPUT_EOF ;
 int SZ_OK ;
 int memcpy (int *,void const*,size_t) ;

__attribute__((used)) static SRes SzDecodeCopy(UInt64 inSize, ILookInStream *inStream, Byte *outBuffer)
{
  while (inSize > 0)
  {
    const void *inBuf;
    size_t curSize = (1 << 18);
    if (curSize > inSize)
      curSize = (size_t)inSize;
    RINOK(ILookInStream_Look(inStream, &inBuf, &curSize));
    if (curSize == 0)
      return SZ_ERROR_INPUT_EOF;
    memcpy(outBuffer, inBuf, curSize);
    outBuffer += curSize;
    inSize -= curSize;
    RINOK(ILookInStream_Skip(inStream, curSize));
  }
  return SZ_OK;
}
