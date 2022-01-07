
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SRes ;
typedef int ISeqInStream ;
typedef int Byte ;


 int ISeqInStream_Read (int const*,int *,size_t*) ;
 int RINOK (int ) ;
 int SZ_ERROR_INPUT_EOF ;
 int SZ_OK ;

SRes SeqInStream_ReadByte(const ISeqInStream *stream, Byte *buf)
{
  size_t processed = 1;
  RINOK(ISeqInStream_Read(stream, buf, &processed));
  return (processed == 1) ? SZ_OK : SZ_ERROR_INPUT_EOF;
}
