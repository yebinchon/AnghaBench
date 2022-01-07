
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SRes ;
typedef int ISeqOutStream ;


 size_t ISeqOutStream_Write (int *,void const*,size_t) ;
 int SZ_ERROR_WRITE ;
 int SZ_OK ;

__attribute__((used)) static SRes WriteBytes(ISeqOutStream *s, const void *buf, size_t size)
{
  return (ISeqOutStream_Write(s, buf, size) == size) ? SZ_OK : SZ_ERROR_WRITE;
}
