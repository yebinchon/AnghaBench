
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt64 ;
typedef int UInt32 ;
typedef scalar_t__ SRes ;
typedef int ISzAllocPtr ;
typedef int ILookInStream ;
typedef int CXzStream ;
typedef int Byte ;


 scalar_t__ ISzAlloc_Alloc (int ,size_t) ;
 int ISzAlloc_Free (int ,int *) ;
 scalar_t__ LookInStream_Read2 (int *,int *,size_t,scalar_t__) ;
 scalar_t__ SZ_ERROR_MEM ;
 scalar_t__ SZ_ERROR_UNSUPPORTED ;
 scalar_t__ SZ_OK ;
 scalar_t__ Xz_ReadIndex2 (int *,int *,size_t,int ) ;

__attribute__((used)) static SRes Xz_ReadIndex(CXzStream *p, ILookInStream *stream, UInt64 indexSize, ISzAllocPtr alloc)
{
  SRes res;
  size_t size;
  Byte *buf;
  if (indexSize > ((UInt32)1 << 31))
    return SZ_ERROR_UNSUPPORTED;
  size = (size_t)indexSize;
  if (size != indexSize)
    return SZ_ERROR_UNSUPPORTED;
  buf = (Byte *)ISzAlloc_Alloc(alloc, size);
  if (!buf)
    return SZ_ERROR_MEM;
  res = LookInStream_Read2(stream, buf, size, SZ_ERROR_UNSUPPORTED);
  if (res == SZ_OK)
    res = Xz_ReadIndex2(p, buf, size, alloc);
  ISzAlloc_Free(alloc, buf);
  return res;
}
