
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt32 ;
typedef int SRes ;
typedef int ISeqInStream ;
typedef int CXzBlock ;
typedef scalar_t__ Byte ;
typedef int BoolInt ;


 int False ;
 int RINOK (int ) ;
 int SZ_OK ;
 int SeqInStream_Read (int *,scalar_t__*,unsigned int) ;
 int SeqInStream_ReadByte (int *,scalar_t__*) ;
 int True ;
 int XZ_BLOCK_HEADER_SIZE_MAX ;
 int XzBlock_Parse (int *,scalar_t__*) ;

SRes XzBlock_ReadHeader(CXzBlock *p, ISeqInStream *inStream, BoolInt *isIndex, UInt32 *headerSizeRes)
{
  Byte header[XZ_BLOCK_HEADER_SIZE_MAX];
  unsigned headerSize;
  *headerSizeRes = 0;
  RINOK(SeqInStream_ReadByte(inStream, &header[0]));
  headerSize = (unsigned)header[0];
  if (headerSize == 0)
  {
    *headerSizeRes = 1;
    *isIndex = True;
    return SZ_OK;
  }

  *isIndex = False;
  headerSize = (headerSize << 2) + 4;
  *headerSizeRes = headerSize;
  RINOK(SeqInStream_Read(inStream, header + 1, headerSize - 1));
  return XzBlock_Parse(p, header);
}
