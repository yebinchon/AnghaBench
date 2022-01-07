
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UInt16 ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef scalar_t__ SRes ;
typedef TYPE_1__ CBuf ;


 int Buf_Free (TYPE_1__*,int *) ;
 int Buf_Init (TYPE_1__*) ;
 int CP_OEMCP ;
 int Print (char const*) ;
 scalar_t__ SZ_OK ;
 scalar_t__ Utf16_To_Char (TYPE_1__*,int const*,int ) ;
 int g_Alloc ;

__attribute__((used)) static SRes PrintString(const UInt16 *s)
{
  CBuf buf;
  SRes res;
  Buf_Init(&buf);
  res = Utf16_To_Char(&buf, s

      , CP_OEMCP

      );
  if (res == SZ_OK)
    Print((const char *)buf.data);
  Buf_Free(&buf, &g_Alloc);
  return res;
}
