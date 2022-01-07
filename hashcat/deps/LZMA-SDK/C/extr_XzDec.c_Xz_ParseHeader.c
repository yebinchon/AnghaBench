
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SRes ;
typedef scalar_t__ CXzStreamFlags ;
typedef int Byte ;


 scalar_t__ CrcCalc (int const*,int) ;
 scalar_t__ GetBe16 (int const*) ;
 scalar_t__ GetUi32 (int const*) ;
 int SZ_ERROR_NO_ARCHIVE ;
 int SZ_ERROR_UNSUPPORTED ;
 int SZ_OK ;
 int XZ_SIG_SIZE ;
 int XZ_STREAM_FLAGS_SIZE ;
 scalar_t__ XzFlags_IsSupported (scalar_t__) ;

SRes Xz_ParseHeader(CXzStreamFlags *p, const Byte *buf)
{
  *p = (CXzStreamFlags)GetBe16(buf + XZ_SIG_SIZE);
  if (CrcCalc(buf + XZ_SIG_SIZE, XZ_STREAM_FLAGS_SIZE) !=
      GetUi32(buf + XZ_SIG_SIZE + XZ_STREAM_FLAGS_SIZE))
    return SZ_ERROR_NO_ARCHIVE;
  return XzFlags_IsSupported(*p) ? SZ_OK : SZ_ERROR_UNSUPPORTED;
}
