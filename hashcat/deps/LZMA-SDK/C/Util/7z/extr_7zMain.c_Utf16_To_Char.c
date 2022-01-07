
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UInt16 ;
typedef int UINT ;
struct TYPE_5__ {scalar_t__* data; } ;
typedef int SRes ;
typedef int LPCWSTR ;
typedef TYPE_1__ CBuf ;
typedef int BOOL ;


 int Buf_EnsureSize (TYPE_1__*,unsigned int) ;
 int SZ_ERROR_FAIL ;
 int SZ_ERROR_MEM ;
 int SZ_OK ;
 int Utf16_To_Utf8Buf (TYPE_1__*,scalar_t__ const*,unsigned int) ;
 unsigned int WideCharToMultiByte (int ,int ,int ,unsigned int,char*,unsigned int,char*,int *) ;

__attribute__((used)) static SRes Utf16_To_Char(CBuf *buf, const UInt16 *s

    , UINT codePage

    )
{
  unsigned len = 0;
  for (len = 0; s[len] != 0; len++);


  {
    unsigned size = len * 3 + 100;
    if (!Buf_EnsureSize(buf, size))
      return SZ_ERROR_MEM;
    {
      buf->data[0] = 0;
      if (len != 0)
      {
        char defaultChar = '_';
        BOOL defUsed;
        unsigned numChars = 0;
        numChars = WideCharToMultiByte(codePage, 0, (LPCWSTR)s, len, (char *)buf->data, size, &defaultChar, &defUsed);
        if (numChars == 0 || numChars >= size)
          return SZ_ERROR_FAIL;
        buf->data[numChars] = 0;
      }
      return SZ_OK;
    }
  }



}
