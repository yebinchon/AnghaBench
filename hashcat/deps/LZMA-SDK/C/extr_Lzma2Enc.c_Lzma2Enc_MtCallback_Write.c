
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t* outBufsDataSizes; size_t outBuf_Rem; size_t outBuf; scalar_t__ outStream; int ** outBufs; } ;
typedef int SRes ;
typedef TYPE_1__ CLzma2Enc ;
typedef int Byte ;


 size_t ISeqOutStream_Write (scalar_t__,int const*,size_t) ;
 int SZ_ERROR_OUTPUT_EOF ;
 int SZ_ERROR_WRITE ;
 int SZ_OK ;
 int memcpy (size_t,int const*,size_t) ;

__attribute__((used)) static SRes Lzma2Enc_MtCallback_Write(void *pp, unsigned outBufIndex)
{
  CLzma2Enc *me = (CLzma2Enc *)pp;
  size_t size = me->outBufsDataSizes[outBufIndex];
  const Byte *data = me->outBufs[outBufIndex];

  if (me->outStream)
    return ISeqOutStream_Write(me->outStream, data, size) == size ? SZ_OK : SZ_ERROR_WRITE;

  if (size > me->outBuf_Rem)
    return SZ_ERROR_OUTPUT_EOF;
  memcpy(me->outBuf, data, size);
  me->outBuf_Rem -= size;
  me->outBuf += size;
  return SZ_OK;
}
