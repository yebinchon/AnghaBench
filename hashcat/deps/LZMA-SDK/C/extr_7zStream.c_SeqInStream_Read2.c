
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SRes ;
typedef int ISeqInStream ;
typedef int Byte ;


 int ISeqInStream_Read (int const*,void*,size_t*) ;
 int RINOK (int ) ;
 int SZ_OK ;

SRes SeqInStream_Read2(const ISeqInStream *stream, void *buf, size_t size, SRes errorType)
{
  while (size != 0)
  {
    size_t processed = size;
    RINOK(ISeqInStream_Read(stream, buf, &processed));
    if (processed == 0)
      return errorType;
    buf = (void *)((Byte *)buf + processed);
    size -= processed;
  }
  return SZ_OK;
}
