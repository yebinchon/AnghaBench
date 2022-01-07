
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SRes ;
typedef int ISeqInStream ;
typedef int Byte ;


 int ISeqInStream_Read (int *,int *,size_t*) ;
 int RINOK (int ) ;
 int SZ_OK ;

__attribute__((used)) static SRes FullRead(ISeqInStream *stream, Byte *data, size_t *processedSize)
{
  size_t size = *processedSize;
  *processedSize = 0;
  while (size != 0)
  {
    size_t cur = size;
    SRes res = ISeqInStream_Read(stream, data, &cur);
    *processedSize += cur;
    data += cur;
    size -= cur;
    RINOK(res);
    if (cur == 0)
      return SZ_OK;
  }
  return SZ_OK;
}
