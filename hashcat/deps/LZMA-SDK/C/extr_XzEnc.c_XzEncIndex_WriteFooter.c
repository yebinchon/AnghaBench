
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int UInt64 ;
typedef int UInt32 ;
struct TYPE_3__ {unsigned int size; scalar_t__* blocks; int numBlocks; } ;
typedef int SRes ;
typedef int ISeqOutStream ;
typedef int CXzStreamFlags ;
typedef TYPE_1__ CXzEncIndex ;
typedef scalar_t__ Byte ;


 int CRC_GET_DIGEST (int ) ;
 int CRC_INIT_VAL ;
 int CrcCalc (scalar_t__*,int) ;
 int CrcUpdate (int ,scalar_t__*,unsigned int) ;
 int RINOK (int ) ;
 int SetUi32 (scalar_t__*,int ) ;
 int WriteBytes (int *,scalar_t__*,unsigned int) ;
 int WriteBytesUpdateCrc (int *,scalar_t__*,unsigned int,int *) ;
 scalar_t__ XZ_FOOTER_SIG_0 ;
 scalar_t__ XZ_FOOTER_SIG_1 ;
 unsigned int XZ_GET_PAD_SIZE (unsigned int) ;
 int Xz_WriteVarInt (scalar_t__*,int ) ;

__attribute__((used)) static SRes XzEncIndex_WriteFooter(const CXzEncIndex *p, CXzStreamFlags flags, ISeqOutStream *s)
{
  Byte buf[32];
  UInt64 globalPos;
  UInt32 crc = CRC_INIT_VAL;
  unsigned pos = 1 + Xz_WriteVarInt(buf + 1, p->numBlocks);

  globalPos = pos;
  buf[0] = 0;
  RINOK(WriteBytesUpdateCrc(s, buf, pos, &crc));
  RINOK(WriteBytesUpdateCrc(s, p->blocks, p->size, &crc));
  globalPos += p->size;

  pos = XZ_GET_PAD_SIZE(globalPos);
  buf[1] = 0;
  buf[2] = 0;
  buf[3] = 0;
  globalPos += pos;

  crc = CrcUpdate(crc, buf + 4 - pos, pos);
  SetUi32(buf + 4, CRC_GET_DIGEST(crc));

  SetUi32(buf + 8 + 4, (UInt32)(globalPos >> 2));
  buf[8 + 8] = (Byte)(flags >> 8);
  buf[8 + 9] = (Byte)(flags & 0xFF);
  SetUi32(buf + 8, CrcCalc(buf + 8 + 4, 6));
  buf[8 + 10] = XZ_FOOTER_SIG_0;
  buf[8 + 11] = XZ_FOOTER_SIG_1;

  return WriteBytes(s, buf + 4 - pos, pos + 4 + 12);
}
