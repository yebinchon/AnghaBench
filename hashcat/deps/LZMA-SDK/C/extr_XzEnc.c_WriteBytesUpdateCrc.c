
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt32 ;
typedef int SRes ;
typedef int ISeqOutStream ;


 int CrcUpdate (int ,void const*,size_t) ;
 int WriteBytes (int *,void const*,size_t) ;

__attribute__((used)) static SRes WriteBytesUpdateCrc(ISeqOutStream *s, const void *buf, size_t size, UInt32 *crc)
{
  *crc = CrcUpdate(*crc, buf, size);
  return WriteBytes(s, buf, size);
}
