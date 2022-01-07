
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UInt16 ;
struct TYPE_4__ {int data; } ;
typedef int SRes ;
typedef TYPE_1__ CBuf ;


 int Buf_EnsureSize (TYPE_1__*,size_t) ;
 int SZ_ERROR_MEM ;
 int SZ_OK ;
 scalar_t__* Utf16_To_Utf8 (int ,int const*,int const*) ;
 size_t Utf16_To_Utf8_Calc (int const*,int const*) ;

__attribute__((used)) static SRes Utf16_To_Utf8Buf(CBuf *dest, const UInt16 *src, size_t srcLen)
{
  size_t destLen = Utf16_To_Utf8_Calc(src, src + srcLen);
  destLen += 1;
  if (!Buf_EnsureSize(dest, destLen))
    return SZ_ERROR_MEM;
  *Utf16_To_Utf8(dest->data, src, src + srcLen) = 0;
  return SZ_OK;
}
