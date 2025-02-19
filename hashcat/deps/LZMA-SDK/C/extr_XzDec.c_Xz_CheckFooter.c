
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt64 ;
typedef scalar_t__ CXzStreamFlags ;
typedef scalar_t__ Byte ;
typedef int BoolInt ;


 scalar_t__ CrcCalc (scalar_t__ const*,int) ;
 scalar_t__ GetBe16 (scalar_t__ const*) ;
 scalar_t__ GetUi32 (scalar_t__ const*) ;
 scalar_t__ const XZ_FOOTER_SIG_0 ;
 scalar_t__ const XZ_FOOTER_SIG_1 ;

__attribute__((used)) static BoolInt Xz_CheckFooter(CXzStreamFlags flags, UInt64 indexSize, const Byte *buf)
{
  return indexSize == (((UInt64)GetUi32(buf + 4) + 1) << 2)
      && GetUi32(buf) == CrcCalc(buf + 4, 6)
      && flags == GetBe16(buf + 8)
      && buf[10] == XZ_FOOTER_SIG_0
      && buf[11] == XZ_FOOTER_SIG_1;
}
